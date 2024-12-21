relation([(1,1), (2,2), (3,3), (1,3), (1,2), (2,3)]).
domain([1, 2, 3]).

reflexive(relation, domain):-
	forall(member(X, domain), member((X, X), relation)).

symmetric(relation, domain):-
	forall(member(X, domain), 
		forall(member(Y, domain),
			(member((X,Y), relation), member((Y,X), relation)))).

antisymmetric(relation, domain):-
	forall((member(X, domain), member(Y, domain), member((X,Y), relation), member((Y,X), relation)), X = Y).

transitive(relation, domain):-
	forall((member(X, domain), member(Y, domain), member(Z, domain)), (member((X,Y), relation), member((Y,Z), relation), member((X,Z), relation))).

equivalent(relation, domain):-
	reflexive(relation, domain), symmetric(relation, domain), transitive(relation, domain). 

