define dso_local i32 @FuncA(i32 %0) {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  store i32 2, i32* %4, align 4
  br label %9

8:                                                ; preds = %1
  store i32 3, i32* %4, align 4
  store i32 4, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sdiv i32 %10, %11
  ret i32 %12
}

define dso_local i32 @FuncB(i32 %0) {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 7, i32* %4, align 4
  store i32 8, i32* %3, align 4
  br label %9

8:                                                ; preds = %1
  store i32 5, i32* %3, align 4
  store i32 6, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  ret i32 %12
}