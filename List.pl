write_list([H]) :-write(H),nl.
write_list([H|T]):-write(H),write(', '),write_list(T).
write_list([]).

write_list_rev([H]):- write(H),!.
write_list_rev([H|T]):-
    write_list_rev(T),
    write(' >'),write(H).
write_list_rev([]).

%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

/*how to read user input */
  %read a name
get_name(Nm):-
    prompt(_, 'Your Name : '),
    read(Nm).

% read user input
get_input(X):- prompt(_,'Your Input : '),
    read(X).

% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
get_name_Age1:-
    prompt(_, 'Your Name : '),
    read(Nm),
    prompt(_, 'Your Age: '),
    read(Age),
    print_message(Nm,Age).

print_message(Nm,Ag):-
    Year100 is 2119-Ag,
    /*write('hello '),write(Nm),write(' '),
    write('You will be 100 in year '),writeln(Year100).*/
    format('Hello ~s, You will be 100 in year ~d ~n',[Nm,Year100]).

%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
get_name_Age:-
    prompt(_, 'Your Name : '),
    read(Nm),
    prompt(_, 'Your Age: '),
    read(Age),
    prompt(_, 'Your Sex: '),
    read(Sex),
    print_message1(Nm,Age,Sex).


print_message1(Nm,Ag,Sex):-
    Year100 is 2119-Ag,
    (    Sex = female -> G1 = 'Girl' ; G1 = 'Boy'),
    (    Ag > 100 -> W = 'were' ; W = 'will be'),
    format('Hello ~s, You are a ~s, You ~s 100 in year ~d ',[Nm,G1,W,Year100]).
