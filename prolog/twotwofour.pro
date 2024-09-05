solve(Vars) :- Vars = [T,W,O,F,U,R],
    
    [T,F]     :: 1..9,
    [W,O,U,R] :: 0..9,

    alldifferent(Vars),

    2 * (100*T + 10 * W + O) #= (1000*F + 100*O + 10*U + R),

    labeling(Vars),

    write(' '), write(T), write(W), write(O), nl ,
    write('+'), write(T), write(W), write(O), nl ,
    write('----------'), nl ,
    write(F), write(O), write(U), write(R), nl.
