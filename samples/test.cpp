void extFunc() {}

int FuncA(int a, int b) {
    if (a < b)
        extFunc();
    while (a <= b)
        extFunc(), a++;
}

int FuncB(int a, int b) {
    if (a < b)
        extFunc();
    for (int i = a; i <= b; i++)
        extFunc();
}