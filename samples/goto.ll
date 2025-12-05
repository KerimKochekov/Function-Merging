define dso_local void @extFunc() #0 {
  ret void
}

define dso_local i32 @FuncA(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @extFunc()
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %8
  call void @extFunc()
  br label %11

11:                                               ; preds = %10
  call void @extFunc()
  call void @llvm.trap()
  unreachable
}

declare void @llvm.trap() #1

define dso_local i32 @FuncB(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %14, %2
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  call void @extFunc()
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %16

14:                                               ; preds = %9
  br label %5

15:                                               ; preds = %5
  call void @extFunc()
  br label %16

16:                                               ; preds = %15, %13
  call void @extFunc()
  call void @llvm.trap()
  unreachable
}