quick_sort([], []).
quick_sort([H|T], Sorted) :-
    partition(H, T, L, G),
    quick_sort(L, SortedL),
    quick_sort(G, SortedG),
    append(SortedL, [H|SortedG], Sorted).

partition(_, [], [], []).
partition(P, [H|T], [H|L], G) :- H =< P, partition(P, T, L, G).
partition(P, [H|T], L, [H|G]) :- H > P, partition(P, T, L, G).

process :- 
    write('Given list [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5] quick sort == '), nl,
    quick_sort([3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], Sorted),
    write(Sorted), nl.

main :-
    process.