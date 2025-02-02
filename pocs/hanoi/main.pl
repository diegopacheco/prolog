hanoi(0, _, _, _).
hanoi(N, Source, Target, Aux) :-
    N > 0,
    N1 is N - 1,
    hanoi(N1, Source, Aux, Target),
    move(Source, Target),
    hanoi(N1, Aux, Target, Source).

move(Source, Target) :- write(Source), write(' -> '), write(Target), nl.

process :- 
    write('Hanoi: Move 3 disks from A to C using B as auxiliary.'), nl,
    write('hanio(3, A, C, B)'), nl,
    hanoi(3, 'A', 'C', 'B'),
    nl.

main :-
    process.
