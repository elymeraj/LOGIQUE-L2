% EXO 4.2.1
head(X,L):- [X|_]=L.


% EXO 4.2.2
addhead(X,L,L1):- L1=[X|L].

% EXO 4.2.3
last1(X,[L]):- X=L.
last1(X,[_|L]):- last1(X,L).


% EXO 4.2.4
addlast(X , [] , [ X ]).
addlast(X ,[ T | Q ], [T | Q1]) :- addlast(X, Q, Q1).

% EXO 4.2.5
reverse1([],[]).
reverse1([X|R],L1):-reverse(R,R1),append(R1,[X],L1).


% EXO 4.3.1

% Base : b appartient au code
% Induction : si S appartient au code alors aS appart au code
langage1([b]).
langage1([a|S]):-langage1(S).

%EXO 4.3.2

% Base : a appartient au code
% Induction : si S appartient au code alors Sb appart au code
langage2([a]).
langage2(S1):-addlast(b,S,S1), langage2(S).

% EXO 4.3.3

% Base : mot vide appartient au code
% Induction : - si S appartient au code alors Sb appart au code
%             - si S appart au code alors aS appart au code

langage3([]).
langage3([a|S]):-langage3(S).
langage3(S1):-addlast(b,S,S1), langage3(S).


% EXO 4.3.4

% Base : mot vide appartient au code
% Induction : - si S appartient au code alors aaS appart au code
langage4([]).
langage4([a|S1]) :- addhead(a,S,S1), langage4(S).

%EXO 4.3.5

% Base : mot vide appartient au code
% Induction : - si S appartient au code alors aSb appart au code
langage5([]).
langage5(S2) :- addhead(a,S1,S2), addlast(b,S,S1),langage5(S).



% EXO 4.3.6

% Base : - mot vide appartient au code
%        -a appert au code
%        -b appart au code
% Induction : - si S appartient au code alors aSa appart au code
%             - si S appartient au code alors bSb appart au code
palindrome([]).
palindrome([a]).
palindrome([b]).
%palindrome([a,S,a]):-palindrome(S).
%palindrome([b,S,b]):-palindrome(S).
palindrome(S2) :- addhead(a,S1,S2), addlast(a,S,S1),palindrome(S).
palindrome(S2) :- addhead(b,S1,S2), addlast(b,S,S1),palindrome(S).

%EXO 4.3.7

%Base : mot vide appartient au code
% Induction : - si S appartient au code alors aS appart au code
%             - si S appartient au code alors Sc appart au code
%             - si S appartient au code et termine par b alors Sb appartau code
%            - si S appartient au code et commence par b alors bS
%            appart au code
%            -si S est le mot vide alors bS appart au code

langage7([]).
langage7([b]).
langage7(S1):-addlast(c,S,S1), langage7(S).
langage7(S1):-addhead(a,S,S1), langage7(S).
langage7([b|S1]):-addhead(b,S,S1),langage7(S).
langage7(S2):-addlast(b,S1,S2), addlast(b,S,S1),langage7(S).

%EXO 4.3.8

%Base : mot vide appartient au code
% Induction : - si S appartient au code alors aSc appart au code
%             - si S appartient au code et termine par b alors Sb appartau code
%            - si S appartient au code et commence par b alors bS
%            appart au code
%            -si S est le mot vide alors bS appart au code

langage8([]).
langage8([b]).
langage8(S2):-addlast(c,S1,S2), addhead(a,S,S1), langage8(S).
langage8([b|S1]):-addhead(b,S,S1),langage8(S).
langage8(S2):-addlast(b,S1,S2), addlast(b,S,S1),langage8(S).

%EXO 4.3.9

%Base : mot vide appartient au code
% Induction : - si S appartient au code alors aS appart au code
%             - si S appartient au code alors Sa appartau code
%            - si S appartient au code et ne contient aucun b alors bS
%            appart au code
%            - si S appartient au code et ne contient aucun b alors Sb
%            appart au code
langage9([]).
langage9([b]).
langage9([a|S]):-langage9(S).
langage9(S1):-addlast(a,S,S1), langage9(S).

%EXO 4.3.10

%Base : mot vide appartient au code
% Induction : - si S appartient au code alors aSb appart au code
%             - si S appartient au code alors bSa appartau code
count(L,E,N):- include(=(E),L,L2), length(L2,N).
%include filtre le contenu de L de sorte que dans L2 il n'y a plus que des récurrences de E, on calcule ensuite la taille de L2
langage10(S) :- count(S,a,N), count(S,b,N2), N==N2. 
%on compte le nombre de a et de b dans le mot et on regarde si ça correspond







