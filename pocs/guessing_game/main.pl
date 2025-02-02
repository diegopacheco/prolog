:- dynamic secret_number/1.

start_game :-
    random_between(1, 10, Secret),
    assert(secret_number(Secret)),
    write('Guess the secret number between 1 and 10:'), nl,
    guess.

guess :-
    read_line_to_string(user_input, Input),
    ( number_string(Guess, Input) ->
        check_guess(Guess);
        write('Invalid input. Please enter a number between 1 and 10.'), nl,
        guess
    ).

check_guess(Guess) :-
    secret_number(Secret),
    ( Guess =:= Secret ->
        write('Congratulations! You guessed the correct number.'), nl;
        Guess < Secret ->
        write('Too low! Try again:'), nl, guess;
        Guess > Secret ->
        write('Too high! Try again:'), nl, guess
    ).

main :-
    start_game.