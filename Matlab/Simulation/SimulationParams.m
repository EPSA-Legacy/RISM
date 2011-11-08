clear all;
close all;
clc;

%*************************************************************************
% DONNEES DU VEHICULE
%*************************************************************************

Masse_vehicule = 850;       % Masse du vehicule en kg
Reduction_electrique=1/3;   % Rapport du diferentiel a l'avant
rayon_roue=0.31;


Ts=0.001;
Cs=196/4;
Ptr=36;         %nbr de pulse par tour capteur vitesse

%*************************************************************************
%BOUCLE MOTEUR : Retour d'etats
%*************************************************************************

%Definition des caracteristiques moteur

r=0.0175;        %meilleur 0.085
L=53E-6;
J=3.5;
lambda=0.01;     %coefficient de frottements visqueux
k=1/52;          %speed constant (V/rpm)  
km=0.16;         %torque constant (Nm/A)  C=km.I

tr=0.008;          %temps de reponse boucle moteur
to=0.03;           %temps de reponse anti windup


% Calcul de la boucle de correction : 
A=[-r/L -k/L;km/J -lambda/J];     %x1=i x2=u x3=-integrale(i)
B=[1/L;0];
M = [0;-1/J];                     
C=[1 0];
[Fnum,Fden] = ss2tf( A,B,C,0);     %construit un sous système à partir de A,B,C. Utile pour mettre en place la correction
F = tf(Fnum,Fden);                 %donne la fonction de transfert du système (zéros ou pas?)
[zo,po,ko]=zpkdata(F);             %donne les zéros, les pôles et le gains de F

Aa=[A zeros(2,1);-1 0 0];         %donne la matrice du système augmenté
Ba=[B;0];
[Fnum,Fden] = ss2tf(Aa,Ba,[C 0],0) ;
Fa = minreal(tf(Fnum,Fden)) ;      %Supprime les zéros superflus pour que le rang du système soit la dimension des matrice
[za,pa,ka] = zpkdata(Fa) ;         %donne les zéros za, les poles pa et le gain ka de Fa

%Poles sans dépassement

p1 = -6.3/tr ;                     
p2 = p1*(1+0.001) ;
p3 = za{:} ;

%Calcul du correcteur
Ka= place(Aa,Ba,[p1 p2 p3]); %matrice de correcteur
Ki=Ka(3);
K=[Ka(1),Ka(2)];


%Détermination des poles de l'observateur classique
pobs1=-4000 ;
pobs2=-4000.001 ;
La1=place(A',C',[pobs1, pobs2])'; %matrice de correcteur de l'erreur d'observation classique
Lobs=La1;

%détermination des poles de l'observateur 

pobs3=-40;

Rapd = 10;

Ao = [A eye(2,2);zeros(2,4)];
Co = [[1 0;0 1] zeros(2,2)];
K = place(Ao',Co',Rapd*p1*[0.98 1 1.01 1.02])';
Kop = K(1:2,:);
Koi = K(3:4,:);


%perte de capteur vitesse

Aoi = [A [1;0]; zeros(1,3)];
Coi = [1 0 0];
Kobi = place(Aoi',Coi',-80*[0.98 1 1.01])';
Kpi = [Kobi(1:2) [0;0]];
Kii = [[Kobi(3);0] [0;0]];

%perte de capteur courant
Aow = [A [0;1]; zeros(1,3)];
Cow = [0 1 0];
Kobw = place(Aow',Cow',-80*[0.98 1 1.01])';
Kpw = [Kobw(1:2) [0;0]];
Kiw = [[Kobw(3);0] [0;0]];

%************************************************************************
%  PARAMETRES DE SECURITE
%************************************************************************

%Supercapas : 
Usc_max=192;               %Tension Maximale des Supercapas
Usc_min=96;                %Tension Minimale des Supercapas
Isc_max=300;               %Courant Maximale


%Moteur : 
Umot_max=96;                %Tension Maximale Moteur
Umot_min_elec=-10;          
Umot_min_hybrid=-10;
Pmax_boost=11750;           %Puissance Maximale Acceleration
Pmax_brake=25000;           %Puissance Maximale Freinage


%valeurs initiales :
Mode_init=3;

%echantillonnage :
Ts_sc=0.005;

%Securité Observateur :
Delt_Imot_max=5;
Delt_I2t_max=1000;
Tr1=1000;
Coeff_reprise_obs_I=1;
Delt_Umot_max=5;
Delt_U2t_max=1000;
Tr2=1000;
Coeff_reprise_obs_U=1;
Tr3=1000;
Ts_sc=0.005;

%Fusible :
I2t_max = 200000;
Imot_max=220;
Imot_reprise=200;
Valeur_max=1000000;
Tr=10000;


%Securité Capteur Vitesse
Tr6=1/Ts;


% Comparaison des données des capteurs de vitesse
Rayon_braquage=10;
empatement=1.5;
rapport_vitesses=empatement/Rayon_braquage;


% Comparaison des données des capteurs de courant
Diff_Courant_max=5;


%secu super capa
Th_down=-5;
Th_up=90;

%precharge
temps_precharge=10; %en seconde
t_prech=temps_precharge/Ts; %en nombre de cycle