is_prime(2).
is_prime(3).
is_prime(N) :- N > 3, N mod 2 =\= 0, \+ has_factor(N, 3).

has_factor(N, F) :- N mod F =:= 0.
has_factor(N, F) :- F * F < N, F2 is F + 2, has_factor(N, F2).

process :- 
    write('Numbers from [1,2,3,4,5,6,7,8,9,10] which one is prime? '),
    foreach(member(X, [1,2,3,4,5,6,7,8,9,10]), 
        (is_prime(X) -> write(X), write(' is prime'), nl; write(X), write(' is not prime'), nl)
    ).

main :-
    process.
