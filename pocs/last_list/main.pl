last_element([X], X).
last_element([_|T], X) :- last_element(T, X).

process :- 
    write('Given list [2, 24, 32, 13, 8] last is == '),
    last_element([2, 24, 32, 13, 8], X),
    write(X), 
    nl.

main :-
    process.
