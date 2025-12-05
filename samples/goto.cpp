void extFunc() {}

int FuncA(int a, int b) {
    if (a <= b) {
        extFunc();
        goto branch2;
    } else {
        branch2:
        extFunc();
    }
    extFunc();
}

int FuncB(int a, int b) {
    while (a <= b) {
        extFunc();
        if (a <= b)
            goto label;
    }
    extFunc();
    label:
    extFunc();
}