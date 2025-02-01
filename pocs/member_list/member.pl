member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

main :- 
    write('Is 3 on the list [1, 2, 3, 4, 5]?'), nl,
    (member(3, [1, 2, 3, 4, 5]) -> write('Yes'); write('No')), nl.