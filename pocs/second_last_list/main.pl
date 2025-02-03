second_last_element([X, _], X).
second_last_element([_|T], X) :- second_last_element(T, X).

process :- 
    write('Given the list [23, 24, 54, 2, 4, 1] second last is == '),
    second_last_element([23, 24, 54, 2, 4, 1], Res),
    write(Res), 
    nl.

main :-
    process.
