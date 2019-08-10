p(1).
p(2).
p(3).
p(4).
%r(X):- p(X),X>2.%
s(Y):-p(Y),!,Y>2.
k(X):- p(X),X>2,!.
k1k(X):- !,p(X),X>2.

r1(X1):-p(X1).
r2(X2):- p(X2),!.
r3(X3):- p(X3) , X3>2.
r4(X4):-p(X4),X4>2,!.
r5(X5):-p(X5),!,X5>2.


q(a).
q(b).
r(alpha).
r(beta).
r(gamma).

%f1(X,Y,Z):- p(X),q(Y),r(Z).%
f1(X1,Y1,Z1):-p(X1), X1 > 2, q(Y1), r(Z1).

f2(X,Y,Z):- p(X),q(Y),r(Z),!.
%f2(X1,Y1,Z1):-p(X1), X1 > 2, q(Y1), r(Z1).%

f3(X3,Y3,Z3):- p(X3),q(Y3),!,r(Z3).

f4(X3,Y3,Z3):- p(X3),!,q(Y3),r(Z3).

f4(X3,Y3,Z3):- !,p(X3),q(Y3),r(Z3).

max(X,Y,X):-X>=Y.
max(X,Y,Y):-X<Y.

maxG(X,Y,X):- X>=Y,!.
maxG(X,Y,Y):- X<Y.

maxR(X,Y,X):-X>=Y.
maxR(_,Y,Y).

myMember(H,[H|_]).
myMember(H, [_|T]):-myMember(H,T).

myMember_cut(H,[H|_]):- !.
myMember_cut(H,[_|T]):-myMember_cut(H,T).


sum([H|T],S):-
    sum(T,St),S is St+H.
sum([],0).

factorial(0,1).
factorial(N,F):- N > 0,N1 is N-1,factorial(N1,F1),F is N*F1.

sumT(L,S):- sumT(L,0,S).
sumT([H|T],Si,Sf):- Sh is Si+H, sumT(T,Sh,Sf).
sumT([],Sf,Sf).


factorialT(N,F):-factorialT(N,1,F).
factorialT(N,F0,FN):-
    N>0,
    F1 is N*F0,
    N1 is N-1,
    factorialT(N1,F1,FN).
factorialT(0,F,F).
