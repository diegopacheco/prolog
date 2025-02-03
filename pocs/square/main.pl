square(X, Square) :- 
    Square is X * X.

process :- 
    write('25 square is '),
    square(25, Square),
    write(Square), nl.

main :-
    process.