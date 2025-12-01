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
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @extFunc()
  br label %9

9:                                                ; preds = %8, %2
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  call void @extFunc()
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %10

17:                                               ; preds = %10
  call void @llvm.trap()
  unreachable
}

declare void @llvm.trap() #1

define dso_local i32 @FuncB(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @extFunc()
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %17, %10
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  call void @extFunc()
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %12

20:                                               ; preds = %12
  call void @llvm.trap()
  unreachable
}