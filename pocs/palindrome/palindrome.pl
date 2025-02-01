palindrome(L) :- reverse(L, L).

main :-
    (palindrome([1, 2, 3, 2, 1]) -> write('List [1, 2, 3, 2, 1] is a palindrome.');
    write('List [1, 2, 3, 2, 1] is not a palindrome.')),
    nl,
    (palindrome([1, 2, 3]) -> write('List [1, 2, 3] is a palindrome.');
    write('List [1, 2, 3] is not a palindrome.')),
    nl,
    (palindrome(["A","B","A"]) -> write('"ABA" is a palindrome.');
    write('"ABA" is not a palindrome.')),
    nl.