void FuncA(int a, int b, int c) {
    start:
    if (a > b) return;
    a++;
    goto start;
}

void FuncB(int a, int b, int c) {
    for (int i = a; i <= b; i++) {
        if (a < c)
            if (b < c)
                break;
        c++;
    }
}