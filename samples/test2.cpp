void extFunc() {}

void FuncA(int a, int b) {
    while (a <= b) {
        extFunc();
        if (a <= b) {
            extFunc();
            if (a <= b) {
                extFunc();
            } else {
                break;
            }
        } else {
            extFunc();
            break;
        }
    }
    extFunc();
}

void FuncB(int a, int b) {
    if (a <= b) {
        label:
        extFunc();
    } else
        goto label;
    if (a <= b) {
        if (a <= b) {
            label1:
            extFunc();
        } else
            goto label2;
    } else {
        if (a <= b) {
            label2:
            extFunc();
        } else
            goto label1;
    }
}