{
    int i; int j; int g; int m; float[20][20] a;
    i = 0;
    while ( i < 20 ) {
        j = 0;
        while ( j < 20 ) {
            a[i][j] = i + j;
            j = j+1;
        }
        i = i+1;
    }
    i = 0;
    while ( i < 20 ) {
        a[i][i] = 1;
        i = i+1;
    }
    g = 1;
    for ( m = 0; m < 5; m = m + 1;) {
        g = g + 1;
    }
}