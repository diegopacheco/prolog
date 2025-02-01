biger(A,B):- 
    (A >= B -> write(A), write(' is Bigger'); write(B), write(' is Bigger')).

main :- 
    write('which one is bigger A:42 or B:34? ')
    , biger(42,34)
    , nl.