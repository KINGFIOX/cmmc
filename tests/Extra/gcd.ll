; ModuleID = 'tests//Extra/gcd.sy'
source_filename = "tests//Extra/gcd.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z3gcdii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %7, %4 ], [ %1, %2 ]
  %6 = phi i32 [ %5, %4 ], [ %0, %2 ]
  %7 = srem i32 %6, %5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %0, %2 ], [ %5, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ %4, %1 ], [ 11, %0 ]
  %3 = phi i32 [ %2, %1 ], [ 7, %0 ]
  %4 = srem i32 %3, %2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %1

6:                                                ; preds = %1
  ret i32 %2
}

attributes #0 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
