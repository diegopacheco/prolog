even(0) :- write('true').
even(X) :- X > 0, X2 is X - 2, even(X2).
even(_) :- write('false').

main :- 
    write('even(10) == '), even(10), nl,
    write('even(11) == '), even(11), nl.