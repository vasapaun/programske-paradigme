novcici(Vars) :- Vars = [N1, N2, N5, N10, N20],
    Vars :: 1..50,

    (N1 + 2*N2 + 5*N5 + 10*N10 + 20*N20) #= 50,

    labeling(Vars).
