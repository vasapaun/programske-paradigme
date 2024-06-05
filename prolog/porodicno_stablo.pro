% porodicno stablo
% svojstva
musko(mihajlo).
musko(stevan).
musko(petar).
musko(mladen).
musko(rajko).
musko(radoje).
musko(radojica).

zensko(milena).
zensko(milica).
zensko(jelena).
zensko(senka).
zensko(mina).
zensko(maja).
zensko(ana).
zensko(radojka).

% odnosi

roditelj(mihajlo, milica).
roditelj(mihajlo, senka).
roditelj(milena, rajko).
roditelj(maja, petar).
roditelj(maja, mina).
roditelj(stevan, mladen).
roditelj(stevan, jelena).
roditelj(stevan, ana).
roditelj(milica, mladen).
roditelj(milica, jelena).
roditelj(milos, radojka).
roditelj(milos, radoje).
roditelj(radojka, radojica).

% pravila

majka(X, Y) :- roditelj(X, Y), zensko(X).
otac(X, Y) :- musko(X), roditelj(X, Y).
brat(X, Y) :- roditelj(Z, X), roditelj(Z, Y), musko(X), X \= Y.
sestra(X, Y) :- roditelj(Z, X), roditelj(Z, Y), zensko(X), X \= Y.
ujak(X, Y) :- majka(Z, Y), brat(X, Z).

% rekurzivna pravila
predak(X, Y) :- roditelj(X, Y).
predak(X, Y) :- roditelj(X, Z), predak(Z, Y).
