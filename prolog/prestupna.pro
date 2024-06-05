prestupna(X) :- X mod 4 =:= 0, X mod 100 =\= 0.
prestupna(X) :- X mod 400 =:= 0.

brdana(februar, X, 28) :- not prestupna(X).
brdana(februar, X, 29) :- prestupna(X).
