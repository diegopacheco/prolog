parent(john, mary).
parent(mary, susan).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

runFacts :- 
    findall(X, parent(X, _), Parents),
    write('Parents: '), write(Parents), nl,
    findall(X, parent(_, X), Children),
    write('Children: '), write(Children), nl.

main :-
    runFacts.
