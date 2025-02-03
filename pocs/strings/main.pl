
concatenate(Str1, Str2, Result) :- 
    atom_concat(Str1, Str2, Result).

contains_substring(Str, Sub) :- 
    sub_atom(Str, _, _, _, Sub).

string_to_uppercase(Str, Upper) :- 
    string_upper(Str, Upper).

string_to_lowercase(Str, Lower) :- 
    string_lower(Str, Lower).

process :- 
    write('Concatenate strings hello and world == '),
    concatenate('hello', 'world', Result),
    writeln(Result), nl, 
    write('Result uppercase and lowercase == '), nl, 
    string_to_uppercase(Result, Upper),
    string_to_lowercase(Result, Lower),
    writeln(Upper), writeln(Lower), nl,
    write('Check if string contains substring == '),
    (contains_substring(Result, 'world') -> writeln('Yes'); writeln('No')), nl.

main :-
    process.
