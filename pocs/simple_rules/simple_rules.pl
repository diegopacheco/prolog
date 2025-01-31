human(socrates).
mortal(X) :- human(X).

main :- 
    findall(X, mortal(X), Mortals),
    write('Mortals: '),
    write(Mortals), nl.