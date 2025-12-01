void FuncA(int &a, int &b, int x) {
    switch (x) {
        case 1: a = a+b; break;
        case 2: b = a-b; break;
        default: a = 0;
    }
}
void FuncB(int &a, int &b, int x) {
    switch (x) {
        case 2: b = a-b; break;
        case 1: a = a+b; break;
        default: a = 0;
    }
}