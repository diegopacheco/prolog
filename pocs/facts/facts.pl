human(socrates).
human(plato).

main :-
    findall(X, human(X), People),
    write(People), nl.