{
    int i ; int j; int tmp; float[4] a; int n;
    a[0] = 4; a[1] = 3; a[2] = 2; a[3] = 1;
    tmp = 0;
    n = 4;
    for (i = 0; i < n; i = i + 1;) {
        for (j = 0; j < n - i - 1; j = j + 1;) {
            if (a[j] > a[j + 1]) {
                tmp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = tmp;
            }
        }wo
    }
}