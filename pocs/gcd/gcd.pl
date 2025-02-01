gcd(X, 0, X).
gcd(X, Y, G) :- Y > 0, R is X mod Y, gcd(Y, R, G).

main:- 
    write('GCD of 48 and 18 is: '), nl,
    gcd(48, 18, R),
    write(R), nl.