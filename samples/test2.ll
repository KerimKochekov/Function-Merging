; ModuleID = 'test2.cpp'
source_filename = "test2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z7extFuncv() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z5FuncAii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %2
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  call void @_Z7extFuncv()
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  call void @_Z7extFuncv()
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @_Z7extFuncv()
  br label %19

18:                                               ; preds = %13
  br label %22

19:                                               ; preds = %17
  br label %21

20:                                               ; preds = %9
  call void @_Z7extFuncv()
  br label %22

21:                                               ; preds = %19
  br label %5

22:                                               ; preds = %20, %18, %5
  call void @_Z7extFuncv()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z5FuncBii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %10, %8
  call void @_Z7extFuncv()
  br label %11

10:                                               ; preds = %2
  br label %9

11:                                               ; preds = %9
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %29, %19
  call void @_Z7extFuncv()
  br label %22

21:                                               ; preds = %15
  br label %28

22:                                               ; preds = %20
  br label %31

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %21
  call void @_Z7extFuncv()
  br label %30

29:                                               ; preds = %23
  br label %20

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.1.0-6"}
