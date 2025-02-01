len([], 0).
len([_|T], L) :- len(T, LT), L is LT + 1.

main :-
    len([1, 2, 3, 4, 5], L),
    write('Length of list [1, 2, 3, 4, 5] is: '),
    write(L), nl,
    halt.