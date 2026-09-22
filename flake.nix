{
  description = "CMMC — C Minus Minus Compiler development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };

        # Packages shared by every supported platform.
        basePackages = with pkgs; [
          # Build system.
          gnumake
          compiledb # generate compile_commands.json via `make compile_commands`

          # Compilers and toolchain.
          gcc
          clang
          clang-tools # clangd, clang-format, clang-tidy
          gdb
          flex
          bison

          # Python tooling used by the build scripts and test suite.
          (python3.withPackages (
            ps: with ps; [
              urwid
              pyyaml
              jinja2
              tqdm
            ]
          ))
        ];

        # Simulators are only supported on Linux.
        linuxPackages =
          with pkgs;
          lib.optionals stdenv.hostPlatform.isLinux [
            xspim
            qtspim
            spike
          ];
      in
      {
        devShells.default = pkgs.mkShell {
          name = "cmmc-dev";
          packages = basePackages ++ linuxPackages;

          shellHook = ''
            echo "== CMMC development environment =="
            echo "Build:       make"
            echo "Debug build: make BUILD_TYPE=Debug"
            echo "Test:        make test"
            echo "Format:      make format-check"
          '';
        };

        formatter = pkgs.nixfmt-tree;
      }
    );
}
