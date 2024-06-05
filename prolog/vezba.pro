maksimum(A, B, M) :- A >= B, M is A.
maksimum(A, B, M) :- A <  B, M is B.

suma(N, S) :- N = 1, S is 1.
suma(N, S) :- N > 1, N1 is N - 1, suma(N1, S1), S is S1 + N.

sumaParnih(N, S) :- N = 2, S is 2.
sumaParnih(N, S) :- N > 2, N mod 2 =:= 0, N1 is N - 2, suma(N1, S1), S is S1 + N.
sumaParnih(N, S) :- N > 2, N mod 2 =:= 1, N1 is N - 1, suma(N1, S).
