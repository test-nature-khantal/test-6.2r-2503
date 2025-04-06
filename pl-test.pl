% Facts
father(john, mike).
father(john, anna).
father(mike, sarah).

mother(susan, mike).
mother(susan, anna).
mother(anna, sarah).

% Rules
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Queries (you can run these queries in a Prolog interpreter)
% ?- father(john, mike).
% ?- grandparent(john, sarah).
% ?- parent(anna, sarah).
