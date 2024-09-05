solve(Vars) :- Vars = [H,K],

    H :: 0..100,
    K :: 0..100,

    (H * 10 + K * 12) #=< (20 * 60),

    (H * 300 + K * 120) #=< (20 * 1000),

    labeling([maximize(H * 7 + K * 9)], Vars),

    Zarada is (H * 7 + K * 9),

    write('Maksimalna zarada od '), write(Zarada), write(' dinara se ostvaruje za '),
    write(H), write(' komada hleba i '), write(K), write(' komada kifli.'), nl.
