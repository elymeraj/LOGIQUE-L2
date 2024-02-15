%liste des hommes
homme(jean).
homme(oscar).
homme(emmanuel).
homme(aurelien).
homme(jaques).
homme(franc).
homme(dominic).
homme(olivier).
homme(lucas).
homme(florent).
homme(simon).
homme(vincent).
homme(alain).
homme(frederic).
homme(luc).
homme(xavier).
homme(louis).
homme(alexandre).
homme(jules).
homme(didier).
homme(eric).
homme(antoine).
homme(paul).
homme(hugo).
homme(samuel).
homme(pierre).
homme(yves).
homme(claude).
homme(remy).
homme(maxime).

%liste des femmes
femme(jeanne).
femme(caroline).
femme(elodie).
femme(aurelie).
femme(beatrice).
femme(severine).
femme(helene).
femme(marion).
femme(antonine).
femme(melodie).
femme(edith).
femme(mireille).
femme(josephine).
femme(anne).
femme(louise).
femme(marie).
femme(lisa).
femme(julie).
femme(francoise).
femme(claire).
femme(brigitte).
femme(monica).
femme(melanie).
femme(megan).
femme(charlotte).
femme(aure).
femme(emmanuelle).
femme(olivia).
femme(catherine).
femme(pauline).

%liste des parents
parent(maxime, catherine).
parent(maxime, olivia).
parent(emmanuelle, catherine).
parent(emmanuelle, olivia).
parent(remy, claude).
parent(catherine, claude).
parent(yves, aure).
parent(olivia, aure).
parent(yves, charlotte).
parent(olivia, charlotte).
parent(pierre, samuel).
parent(pierre, hugo).
parent(pierre, pauline).
parent(pierre, paul).
parent(pierre, megan).
parent(aure, samuel).
parent(aure, hugo).
parent(aure, pauline).
parent(aure, paul).
parent(aure, megan).
parent(charlotte, melanie).
parent(charlotte, antoine).
parent(eric, melanie).
parent(didier, antoine).
parent(aurelien, emmanuel).
parent(melodie, emmanuel).
parent(jaques, caroline).
parent(aurelie, caroline).
parent(franc, florent).
parent(beatrice, florent).
parent(dominic, mireille).
parent(severine, mireille).
parent(dominic, simon).
parent(severine, simon).
parent(olivier, edith).
parent(helene, edith).
parent(olivier, xavier).
parent(helene, xavier).
parent(lucas, anne).
parent(lucas, josephine).
parent(antonine, anne).
parent(marion, josephine).
parent(xavier, luc).
parent(xavier, frederic).
parent(edith, alain).
parent(edith, lisa).
parent(simon, alain).
parent(simon, lisa).
parent(mireille, luc).
parent(mireille, frederic).
parent(florent, jeanne).
parent(caroline, oscar).
parent(emmanuel, oscar).
parent(oscar, jean).
parent(jeanne, jean).
parent(oscar, elodie).
parent(jeanne, elodie).
parent(oscar, monica).
parent(jeanne, monica).
parent(oscar, brigitte).
parent(jeanne, brigitte).
parent(vincent, louis).
parent(lisa, louis).
parent(alain, alexandre).
parent(marie, alexandre).
parent(frederic, claire).
parent(louise, claire).
parent(frederic, jules).
parent(louise, jules).
parent(luc, francoise).
parent(anne, francoise).
parent(luc, julie).
parent(mireille, jeanne).
parent(anne, julie).

% question 1 //Le prédicat mere(X, Y)signifiant «X est la mère de Y».

pere(X, Y) :- parent(X, Y), homme(X).
mere(X, Y) :- parent(X, Y), femme(X).

% question 2 //Les prédicats fils(X, Y)et fille(X, Y).
fils(X, Y) :- homme(X), parent(Y, X).
fille(X, Y) :- femme(X), parent(Y, X).

% question 3 //Les prédicats grandpere(X, Y)et grandmere(X, Y).
grandpere(X, Y) :- pere(X,Z), parent(Z,Y).
grandmere(X, Y) :- mere(X,Z), parent(Z,Y).

% question 4 //Les prédicats soeur(X, Y)et frere(X, Y).
soeur(X, Y) :- femme(X), parent(Z, X), parent(Z, Y), X\==Y.
frere(X, Y) :- homme(X), parent(Z, X), parent(Z, Y), X\==Y.

% question 5 //Les prédicats cousin(X, Y)et cousine(X, Y).
cousin(X, Y) :- homme(X), grandpere(Z,X), grandpere(Z,Y), X\==Y.
cousin(X, Y) :- homme(X), grandmere(Z,X), grandmere(Z,Y), X\==Y.
cousine(X, Y) :- femme(X), grandpere(Z,X), grandpere(Z,Y), X\==Y.
cousine(X, Y) :- femme(X), grandmere(Z,X), grandmere(Z,Y), X\==Y.









