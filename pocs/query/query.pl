likes(mary, pizza).
likes(john, burger).
likes(john, mary).
likes(john, pizza).

main :-
    write('Who likes pizza and mary? '), 
    findall(X, (likes(mary, pizza), likes(X, pizza)), L),
    write(L), nl.