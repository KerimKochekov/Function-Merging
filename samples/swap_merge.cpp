void extFunc(int x) {}
void FuncA(int a, int b) {
    if (a <= b) {
        extFunc(a-b);
    } else {
        extFunc(a+b);
    }
}
void FuncB(int a, int b) {
    if (a > b) {
        extFunc(a+b);
    } else {
        extFunc(a-b);
    }
}