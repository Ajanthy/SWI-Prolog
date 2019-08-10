likes(john,mary).
likes(mary,ravi).
likes(ravi,mary).
sex(mary,f).
sex(ravi,m).
sex(john,m).

/* Who likes Mary?/
 *  Whom mary likes?
 */
friends(X,Y):- likes(X,Y),likes(Y,X).

likes(ellen,tennis).
likes(john,football).
likes(tom,baseball).
likes(eric,swimming).
likes(mark,tennis).

likes(bill, X) :-likes(tom, X).
