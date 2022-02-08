L1:	t1 = 0 * 8
	a [ t1 ] = 4
L3:	t2 = 1 * 8
	a [ t2 ] = 3
L4:	t3 = 2 * 8
	a [ t3 ] = 2
L5:	t4 = 3 * 8
	a [ t4 ] = 1
L6:	tmp = 0
L7:	n = 4
L8:	iffalse i < n goto L2
L9:	t5 = n - i
	t6 = t5 - 1
	iffalse j < t6 goto L8
L10:	t7 = j * 8
	t8 = a [ t7 ]
	t9 = j + 1
	t10 = t9 * 8
	t11 = a [ t10 ]
	iffalse t8 > t11 goto L9
L11:	t12 = j * 8
	tmp = a [ t12 ]
L12:	t13 = j * 8
	t14 = j + 1
	t15 = t14 * 8
	t16 = a [ t15 ]
	a [ t13 ] = t16
L13:	t17 = j + 1
	t18 = t17 * 8
	a [ t18 ] = tmp
	j = j + 1
	goto L9
	i = i + 1
	goto L8
L2:
