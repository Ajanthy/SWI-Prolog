likes(ellen, tennis).
likes(john, football).
likes(tom, baseball).
likes(eric ,swimming).
likes(mark, tennis).
likes(bill, X) :- likes(tom, X).

car(chrysle ,130000,3, red, 12000).
car(ford, 90000, 4, grey, 25000).
car(dutsan, 8000, 1, red, 30000).

% find the model and colour of the car the price < 30000

student(chris,9).
student(paul,10).
student(susan,9).
student(peter,9).
pair(X,Y) :- student(X,9),student(Y,9), X @< Y.

%Joishuva,Bill and Tom are males

males(joshuva).
males(bill).
males(tom).


smoker(guiseppe).
smoker(tom).

vegetarian(joshuva).
vegetarian(tom).

% sophie could date with a male if he is a nonsmoker or he is a
% vegetarian

sophiesDate(M) :- males(M), not(smoker(M)).
sophiesDate(M1) :- males(M1), vegetarian(M1).
sophiesDateFinal(M) :- males(M), (not(smoker(M)) ; vegetarian(M)).



male(alan). male(charles). male(bob). male(ivan).
female(beverly). female(fay). female(marilyn). female(sally).
mother_of(beverly,marilyn). mother_of(sally, alan).
father_of(bob, alan). father_of(charles, beverly).
father_of(bob, fay). father_of(alan, marilyn).

parent(Child, Parent) :- mother(Child,Parent); father(Child, Parent).

brother(X,Y) :- male(Y),parent(X,P), parent(Y,P), X \= Y.

sister(X,Y) :-female(Y), parent(Y,P), parent(X,P), X \= Y.

grandfather(X,G) :- father(P,G), parent(X,P).

uncle(X,U) :- parent(X,P), brother(P,U).
