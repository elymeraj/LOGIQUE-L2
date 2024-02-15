personne(1,sam,180,brun,27).
personne(2,nathalie,167,blonde,27).
personne(3,richard,174,blond,32).
personne(4,margot,171,brune,34).

gout(2,rap,action,basket).
gout(1,rap,action,basket).
gout(3,pop,policier,aucun).
gout(4,pop,policier,aucun).

recherche(2,180,brun,27).
recherche(1,167,blonde,27).
recherche(3,171,brune,32).
recherche(4,174,blond,32).



convient_physiquement(X,Y) :- personne(N, Y, _, _, _), recherche(N,T,C,A), personne(_, X, T,C,A), X\==Y.

ont_meme_gouts(X,Y) :- gout(N1,M,L,S), gout(N2,M,L,S), personne(N1,X,_,_,_),personne(N2,Y,_,_,_), X\==Y.

assortis(X,Y) :- convient_physiquement(X,Y), convient_physiquement(Y,X), ont_meme_gouts(X,Y), X\==Y.

