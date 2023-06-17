#!/usr/bin/env python3

from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm
import os
import sys
import subprocess
import shutil
import tqdm

target = sys.argv[3]
qemu_path = os.environ.get('QEMU_PATH', '')
qemu_command = {
'riscv':'{qemu_path}/qemu-riscv64 -L /usr/riscv64-linux-gnu -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
'mips':'{qemu_path}/qemu-mipsel -L /usr/mipsel-linux-gnu -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
'arm': '{qemu_path}/qemu-arm -L /usr/arm-linux-gnueabi -cpu cortex-a7 -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
'llvm': ''
}[target]
qemu_gcc_ref_command = { 
'riscv': "riscv64-linux-gnu-gcc-11 -x c++ -O2 -DNDEBUG -march=rv64gc -mabi=lp64d -mcmodel=medlow -ffp-contract=on -w ",
'mips': "mipsel-linux-gnu-gcc-10 -x c++ -O2 -DNDEBUG -march=mips32r5 -mhard-float -ffp-contract=on -w ",
'arm': "arm-linux-gnueabi-gcc -x c++ -O2 -DNDEBUG -march=armv7 -ffp-contract=on -w ",
'llvm':''
}[target]
binary = sys.argv[1]
test_count = int(sys.argv[2])
csmith_ext = "--max-funcs 2 --max-block-depth 2 --max-expr-complexity 3 "
csmith_command = "csmith --no-pointers --quiet --no-packed-struct --no-unions --no-volatiles --no-volatile-pointers --no-const-pointers --no-builtins --no-jumps --no-bitfields --no-argc --no-structs {}--output /dev/stdout".format(
    csmith_ext)
gcc_command = "gcc -Wno-narrowing -O0 -DNDEBUG -ffp-contract=on -w "
gcc_header = """
#include <stdio.h>
#include <stdint.h>
#include <math.h>

static void putint(int x) {
    printf("%d", x);
}
static void putch(int ch) {
    printf("%c", ch);
}
"""
cmmc_header = """
float fabsf(float x) {
    return x>=0.0f?x:-x;
}
double fabs(double x) {
    return x>=0.0?x:-x;
}
"""
optimization_level = '3'
prog_timeout = 10.0
cmmc_timeout = 20.0

cwd = os.path.dirname(binary)+"/csmith"
if os.path.exists(cwd):
    shutil.rmtree(cwd)
os.makedirs(cwd)
base = os.path.dirname(os.path.abspath(__file__))
header_path = base+"/csmith_header.h"
with open(header_path) as f:
    header = f.read()


def generate():
    src = subprocess.check_output(csmith_command.split(' '), cwd=cwd).decode()
    src = src.replace('#include "csmith.h"', header)
    src = src.replace('int print_hash_value = 0;', 'int print_hash_value = 1;')
    src = src.replace('long', 'int64_t')
    src = src.replace('printf("index = [%d]\\n", ', 'putdim(')
    src = src.replace('printf("index = [%d][%d]\\n", ', 'putdim2(')
    src = src.replace('printf("index = [%d][%d][%d]\\n", ', 'putdim3(')
    return src


def csmith_opt_only(i):
    src = generate()
    src = src.replace('static ', "")
    src = cmmc_header + src
    try:
        ret = subprocess.run([binary, '-i', '-o', '/dev/null',
                              '--hide-symbol', '-O', optimization_level, '-t', 'llvm', '-x', 'SysY', '-D', '/dev/stdin'], input=src.encode(), capture_output=True, timeout=cmmc_timeout)
        if ret.returncode == 0 and len(ret.stderr) == 0:
            return True

    except subprocess.TimeoutExpired:
        pass
    file_sy = cwd+"/test{}.sy".format(i)
    # print(file)
    with open(file_sy, 'w') as f:
        f.write(src)
    return False


def csmith_test(i):
    try:
        src = generate()
    except subprocess.CalledProcessError:
        # skip this test
        return None
    basename = cwd+"/test"+str(i)
    file_c = basename + ".c"
    file_ref = basename + ".out"
    with open(file_c, 'w') as f:
        f.write(gcc_header)
        f.write(src)
    ret = os.system(gcc_command+" -o "+file_ref+" "+file_c)
    assert ret == 0
    ref_timeout = False
    try:
        ref_output = subprocess.check_output(file_ref, timeout=prog_timeout)
    except subprocess.TimeoutExpired:
        ref_timeout = True

    if ref_timeout:
        os.remove(file_c)
        os.remove(file_ref)
        # skip this test
        return None

    src = src.replace('static ', "")
    src = cmmc_header + src
    try:
        ret = subprocess.run([binary, '-o', '/dev/stdout',
                              '--hide-symbol', '-O', optimization_level, '-t', 'llvm', '-e', '/dev/null', '-x', 'SysY', '-D', '/dev/stdin'], input=src.encode(), capture_output=True, timeout=cmmc_timeout)
        if ret.returncode == 0 and ref_output == ret.stdout:
            os.remove(file_c)
            os.remove(file_ref)
            return True

    except subprocess.TimeoutExpired:
        os.remove(file_c)
        os.remove(file_ref)
        # skip this test
        return None
    
    file_sy = basename + ".sy"
    # print(file)
    with open(file_sy, 'w') as f:
        f.write(src)
    return False


L = list(range(test_count))
pbar = tqdm.tqdm(L)
error_count = 0
skipped_count = 0

with ThreadPoolExecutor() as p:
    for res in p.map(csmith_test, L):
        if res is not None:
            error_count += 0 if res else 1
        else:
            skipped_count += 1

        pbar.update(1)
        pbar.set_description("Failed: {} Skipped: {}".format(
            error_count, skipped_count))
