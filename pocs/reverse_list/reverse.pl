reverse([], []).
reverse([H|T], R) :- reverse(T, RT), append(RT, [H], R).

main :- 
    write('Reversing [1, 2, 3] gives: '), nl,
    reverse([1, 2, 3], R),
    write(R), nl.