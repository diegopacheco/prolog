odd(0) :- write('false').
odd(X) :- X > 0, X2 is X - 2, odd(X2).
odd(X) :- X < 0, write('true').

main :- 
    write('odd(10) == '), odd(10), nl,
    write('odd(11) == '), odd(11), nl.