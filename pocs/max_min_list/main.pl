max([X], X).
max([H|T], M) :- max(T, MT), M is max(H, MT).

min([X], X).
min([H|T], M) :- min(T, MT), M is min(H, MT).

process :- 
    write('given list [1, 2, 3, 4, 5]'), nl,
    max([1, 2, 3, 4, 5], M), write('Max: '), write(M), nl,
    min([1, 2, 3, 4, 5], N), write('Min: '), write(N),
    nl.

main :-
    process.
