sum(A,B, Sum) :- Sum is A + B.

process :- 
    write('Sum 1 + 2 == '), 
    sum(1,2, Sum),
    write(Sum).

main :-
    process.
