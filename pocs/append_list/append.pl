append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).

main :- 
    write('Appending [1, 2, 3] to [4, 5, 6] gives: '), nl,
    append([1, 2, 3], [4, 5, 6], R),
    write(R), nl.