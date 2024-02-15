couleur(rouge).
couleur(vert).
couleur(jaune).

%coloriage(C1,C2,C3,C4) :- couleur(C1), couleur(C2), couleur(C3), couleur(C4), C1\==C2, C1\==C3, C1\==C4, C2\==C3, C3\==C4.
%coloriage(C1,C2,C3,C4) :- couleur(C1), couleur(C2), C1\==C2, couleur(C3), C1\==C3, C2\==C3, couleur(C4), C1\==C4, C3\==C4.
coloriage(C1,C2,C3,C4) :- couleur(C1),C1\==C2, C1\==C3, C1\==C4, couleur(C2),C2\==C3, couleur(C3), C3\==C4, couleur(C4).
