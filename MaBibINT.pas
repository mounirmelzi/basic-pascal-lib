{

	Created by Melzi Mounir
	Version 2.0

}

Unit MaBibINT ;

Interface //////////////////////////////////////////////////////////////////////////////////////////////////////////////

{1} // fonction pour vérifier si un entier est premier ou non
Function premier (n : Integer) : Boolean ;

{2} // fonction pour calculer la somme des diviseurs propre d'un entier
Function SDIV (n : Integer) : Integer ;

{3} // fonction pour vérifier si un entier est parfait ou non
Function parfait(n : Integer) : Boolean;

{4} // fonction pour calculer la puissance (n^p)
Function puiss (n , p : Integer) : Integer ;

{5} // fonction pour calculer le nombre des chiffres qui composent un entier
Function nb_pos (n : Integer) : Integer ;

{6} // fonction pour chercher la valeur d'un chiffre dans une position (p) dans un entier (n)
   // l'indice commence de 1 ( '1' plus faible | 'nb_pos(n)' plus fort )
  // fonction pour extraire un nombre de k positions de N à partir de la position p de droite a gauche
Function extr_pos(N,p,k:Integer):Integer;

{7} // fonction qui fait l'addition (de num1 et num2) dans n'importe quelle base entre 2 et 10
Function Add_basen(num1,num2,base : Integer) : Integer ;

{8} /// procedure pour écrire dans l'écran la suite aliquote d'un entier
Procedure SuiteAliquote(N : Integer) ;

{9} // fonction pour détecter si un nombre entier est sociable ou non
Function sociable(N : Integer): Boolean;

{10} // fonction pour calculer l'ordre d'un entier sociable
    // elle retourne -1 si n n'est pas sociable comme signe d'erreur
Function sociable_ordre (n : Integer) : Integer ;

{11} // vérifier si un entier est amical ou non (sans calculer son couple)
Function amical(n : Integer): Boolean;

{12} // fonction qui convert un entier n de base b à la base 10 ( 1 < b < 11 )
Function ConvertB_10 (n,b : Integer) : Integer ;

{13} // fonction qui convert un entier n de base 10 à la base b ( 1 < b < 11 )
Function Convert10_B (n,b : Integer) : Integer ;

{14} // fonction qui convert un entier n de base b1 vers la base b2 ( b1 et b2 entre 2 et 10 )
Function ConvertBase (n, b1, b2 : Integer) : Integer ;

{15} // fonction qui calcule le nombre d'apparition du chiffre 'Ch' dans un entier 'n'
Function Freq_Ch ( n , ch : Integer ) : Integer ;

{16} // fonction qui concatène deux entiers num1 et num2 (Num1Num2)
Function Concat (num1, num2 : Integer) : Integer ;

{17} // fonction qui compose un entier d'un (number) répéteé (fréquence) fois
Function Compose(number,frequence : Integer ) : Integer ;

{18} // fonction pour ordonner les chiffres composant de 'n' de façon croissante de gauche à droite
Function Croissant ( n : Integer ) : Integer ;

{19} // fonction pour ordonner les chiffres composant de 'n' de façon décroissante de gauche à droite
Function Decroissant ( n : Integer ) : Integer ;

{20} // donne la positioon du 1er 'ch' appartien dans 'n' ( droite vers gauche )
    // si 'ch' n'est pas dans 'n' elle retourne (-1)
Function pos_dg(n,ch : Integer): Integer;

{21} // changer la valeur de la position p dans n par la valeur "chiffre"
Function change_pos (n, p, chiffre : Integer):Integer;

{22} // calculer le code gray suivant apres le 'n'
Function next_gray(n: Integer):Integer;

{23} /// afficher les n premiers codes gray
Procedure codeGRAY_gen(n:Integer);

{24} // fonction qui effectue des décalages circulaires de droite vers gauche
		// Exemple : (12345,1) = 23451
Function decal_circ_dg(n, nbr_decalage : Integer):Integer;

{25} // fonction qui effectue des décalages circulaires de gauche vers droite
		// Exemple : (12345,1) = 51234
Function decal_circ_gd(n, nbr_decalage : Integer):Integer;

{26} // fonction pour inverser les chiifres composant d'un entier 'n'
Function inverse (n:Integer) : Integer;

{27} // fonction pour vérifier si aucun chiffre ne se répète dans 'n'
function uniq (n : Integer) : Boolean;

{28} // fonction pour supprimer une position dans un nombre
    // Exemple : del_pos(12345, 2) = 1235
Function del_pos(n , po : Integer):Integer;

{29} // fonction pour supprimer un chiffre 'ch' dans 'n'
		// NB : si 'ch' se répète , elle va supprimer tous les 'ch' dans 'n'
	 // Exemple : del_ch (1995, 9) = 15
Function del_ch (n,ch : Integer) : Integer ;

{30} // fonction qui retoune le plus grand chiffre dans un entier
Function maxDG (n : Integer) : Integer ;

{31} // fonction qui retoune le plus petit chiffre dans un entier
Function minDG (n : Integer) : Integer ;

{32} // fonction pour vérifier si un entier est deficient ou non
Function deficient(n : Integer) : Boolean;

{33} // fonction pour vérifier si un entier est abondant ou non
Function abondant(n : Integer) : Boolean;

{34} // fonction pour vérifier si un entier est super_abondant ou non
Function super_abondant(n : Integer) : Boolean;

{35} // fonction pour donner un nombre aléatoire entre a et b  (inclus)
Function aleatoire(a,b : Integer) : Integer;

{36} // fonction pour calculer le factoriel d'un nombre n
Function facto (n : Integer) : Integer;

{37} // fonction pour calculer le nombre des arrangements possibles de p parmi n
Function arrang (n, p : Integer) : Integer;

{38} // fonction pour calculer le nombre des combinaisons possibles de p parmi n
Function comb (n,p : Integer) : Integer;

{39} // fonction pour donner le plus grand entre deux entier
Function max(n1,n2:Integer):Integer;

{40} // fonction pour donner le plus petit entre deux entier
Function min(n1,n2:Integer):Integer;

{41} /// procedure pour permuter les deux nombre a et b
Procedure permut (Var a,b : Integer);

{42} // fonction pour calculer la somme des chiffres composant d'un entier 'n'
Function somme_ch (n : Integer) : Integer;

{43} // fonction pour calculer le produit des chiffres composant d'un entier 'n'
Function produit_ch (n : Integer) : Integer;

{44} // fonction pour permuter les valeurs de deux positions 'p1' et 'p2' dans un entier 'n'
Function switch_pos(n, p1, p2 : Integer):Integer;

{45} // fonction pour vérifier si 'n1' et 'n2' sont composée de meme chiffres
		// le nombres des chiffre n'est pas important (1123 et 123 sont de meme chiffre)
Function same_dg (n1,n2 : Integer) : Boolean;

{46} // fonction pour insérer un nombre 'to_insert' dans une position 'position' en un entier 'n'
		// Exemple : ins_num (1234, 56, 2) = 123564
Function ins_num (n, to_insert, position : Integer) : Integer ;

{47} //	Vérifier si un entier est composé de 2 parties identiques
Function two_identical_parts (n : Integer) : Boolean;

{48} // vérifier si la partie centrale de 'n' est composée des mêmes ciffres
Function Meme_Centre (n : Integer) : Boolean;

{49} //


{50} //


{  } //


{  } //
////


Implementation /////////////////////////////////////////////////////////////////////////////////////////////////////////

// 1
Function premier (n : Integer) : Boolean ;
Var
	i : Integer;
	check : Boolean;
Begin
	check := True;
	if n < 2 Then premier := False
	Else if (n=2) or (n=3) Then premier := True
	Else if (n mod 2) = 0 Then premier := False
	Else
	Begin
		i := 3 ;
		While (i <= Sqrt(n)+1) and check Do
		Begin
			if (n mod i = 0) Then check := False;
			i := i + 2 ;
		End;
		premier := check ;
	End;
End;
//
//**********************************************************************************************************************
// 2
Function SDIV (n : Integer) : Integer ;
Var somme , i : Integer ;
Begin
	somme := 0 ;
	for i:=1 To (n div 2) Do
	Begin
		if n mod i = 0 then somme := somme + i ;
	End;
	SDIV := somme
End;
//
//**********************************************************************************************************************
// 3
Function parfait(n : Integer) : Boolean;
Begin
	if n < 1 Then parfait := False
	Else parfait := ( n = SDIV(n) ) ;
End;
//
//**********************************************************************************************************************
// 4
Function puiss (n , p : Integer) : Integer ;
Var i , r : Integer ;
Begin
	r := 1 ;
	for i:=1 to p Do
	Begin
		r	:= r * n;
	End;
	puiss := r ;
End ;
//
//**********************************************************************************************************************
// 5
Function nb_pos (n : Integer) : Integer ;
Var i  : Integer ;
Begin
	i:=1;
	While (n div 10 <> 0) Do
	Begin
		i := i+1;
		n := n Div 10;
	End;
	nb_pos := i;
End ;
//
//**********************************************************************************************************************
// 6
Function extr_pos(N,p,k:Integer):Integer;
begin
	extr_pos:=( Abs(N) div Puiss(10,p-1) ) mod Puiss(10,k);
end;
//
//**********************************************************************************************************************
// 7
Function Add_basen(num1,num2,base : Integer):Integer;
Var maxpos, retenu, i, somme, r : Integer ;
Begin
	if num1 > num2 Then maxpos := nb_pos(num1)
	Else maxpos := nb_pos(num2);
	retenu := 0;
	r := 0;
	for i:=0 to maxpos Do
	Begin
		somme := ( retenu + extr_pos(num1,i+1,1) + extr_pos(num2,i+1,1) ) mod base ;
		retenu := ( retenu + extr_pos(num1,i+1,1) + extr_pos(num2,i+1,1) ) div base ;
		r := r + somme * puiss(10,i);
	End;
	Add_basen := r;
End;
//
//**********************************************************************************************************************
// 8
Procedure SuiteAliquote(N : Integer);
Var Courant : Integer ;
Begin
	courant := N;
	Write('La suite aliquote est : ',courant);
	Repeat
		courant := SDIV(courant);
		Write (', ',courant);
	Until (courant = 1) or (courant = n);
	Writeln('');
End;
//
//**********************************************************************************************************************
// 9
Function sociable(N : Integer): Boolean;
Var Courant : Integer ;
Begin
	if N > 1 Then
	Begin
		courant := N;
		Repeat
			courant := SDIV(courant);
		Until (courant = 1) or (courant = n);
		sociable := courant = n;
	End
	Else sociable := False ;
End;
//
//**********************************************************************************************************************
// 10
Function sociable_ordre (n : Integer) : Integer ;
Var courant,ordre : Integer ;
Begin
	if sociable(n) Then
	Begin
		courant := N;
		ordre := 0;
		Repeat
			courant := SDIV(courant);
			ordre := ordre +1;
		Until (courant = n);
		sociable_ordre := ordre;
	End
	Else sociable_ordre := -1 ;
End;
//
//**********************************************************************************************************************
// 11
Function amical(n : Integer): Boolean;
Begin
	amical := sociable_ordre(n) = 2;
End ;
//
//**********************************************************************************************************************
// 12
Function ConvertB_10 (n,b : Integer) : Integer ;
Var i, max, Final_result : Integer;
Begin
	max := nb_pos(n) - 1;
	Final_result := 0;
	For i:=0 To max Do
	Begin
		Final_result := Final_result + puiss(b,i) * extr_pos(n,i+1,1);
	End;
	if n<0 Then Final_result := Final_result * (-1) ;
	ConvertB_10 := Final_result ;
End;
//
//**********************************************************************************************************************
// 13
Function Convert10_B (n,b : Integer) : Integer ;
var x, quotion, p, r : Integer;
Begin
	x := Abs(n) ;
	p := 1;
	r := 0;
	Repeat
		quotion := x div b;
		r := r + (x mod b) * p;
		p := p * 10 ;
		x := quotion ;
	Until quotion = 0 ;
	if n<0 Then r := r * (-1);
	Convert10_B := r;
End;
//
//**********************************************************************************************************************
// 14
Function ConvertBase (n, b1, b2 : Integer) : Integer ;
Begin
	if b1 = b2 Then ConvertBase := n
	Else if b1 = 10 Then ConvertBase := Convert10_B(n, b2)
	Else if b2 = 10 Then ConvertBase := ConvertB_10(n,b1)
	Else ConvertBase := Convert10_B( ConvertB_10(n,b1) , b2);
End;
//
//**********************************************************************************************************************
// 15
Function Freq_Ch ( n , ch : Integer ) : Integer ;
Var i , cmpt , positions : Integer ;
Begin
	positions := nb_pos(n) ;
	cmpt := 0;
	for i:=1 to positions Do
	Begin
		if extr_pos(n,i,1) = ch Then cmpt := cmpt + 1;
	End;
	Freq_Ch := cmpt ;
End ;
//
//**********************************************************************************************************************
// 16
Function Concat (num1, num2 : Integer) : Integer ;
Begin
	Concat := num1 * puiss(10, nb_pos(num2)) + num2 ;
End;
//
//**********************************************************************************************************************
// 17
Function Compose(number,frequence : Integer ) : Integer ;
Var i , res : Integer ;
Begin
	res := 0;
	for i:=1 To frequence Do
	Begin
		res := Concat ( res , number );
	End;
	Compose := res ;
End;
//
//**********************************************************************************************************************
// 18
Function Croissant ( n : Integer ) : Integer ;
Var i , res , apparition : Integer;
Begin
	res := 0;
	for i:=1 to 9 Do
	Begin
		apparition := Freq_ch(n,i) ;
		res := res * puiss(10, apparition) + compose(i, apparition)
	End;
	Croissant := res ;
End;
//
//**********************************************************************************************************************
// 19
Function Decroissant ( n : Integer ) : Integer ;
Var i , res , apparition : Integer;
Begin
	res := 0;
	for i:=9 DownTo 0 Do
	Begin
		apparition := Freq_ch(n,i) ;
		res := res * puiss(10, apparition) + compose(i, apparition)
	End;
	Decroissant := res ;
End;
//
//**********************************************************************************************************************
// 20
Function pos_dg(n,ch : Integer): Integer;
Var  res, po, i : Integer;
Begin
	res := -1 ;
	po := nb_pos(n);
	i := 1 ;
	While (i<=po) and (extr_pos(n,i,1) <> ch) Do i := i +1;
	if extr_pos(n,i,1) = ch Then res := i ;
	pos_dg := res;
End;
//
//**********************************************************************************************************************
// 21
Function change_pos (n, p, chiffre : Integer):Integer;
Begin
	change_pos := n + puiss(10,p-1) * (chiffre-extr_pos(n,p,1))
End;
//
//**********************************************************************************************************************
// 22
Function next_gray(n: Integer):Integer;
Begin
	if ((freq_ch(n,1) mod 2) = 0) Then next_gray := change_pos(n,1, 1-(n mod 10))
	Else next_gray :=  change_pos(n,pos_dg(n,1)+1, 1 - extr_pos(n,pos_dg(n,1)+1 ,1) )
End;
//
//**********************************************************************************************************************
// 23
Procedure codeGRAY_gen(n:Integer);
Var i, c : Integer;
Begin
	c := 1;
	for i:=1 To n Do
	Begin
		Write(c,' | ');
		c:=next_gray(c)
	End;
End;
//
//**********************************************************************************************************************
// 24
Function decal_circ_dg(n, nbr_decalage : Integer):Integer;
Var positions, res, indice : Integer;
Begin
	positions := nb_pos(n);
	res := 0;
	if nbr_decalage=1 Then
	Begin
		for indice:= positions-1 DownTo 1 Do res := res*10 + extr_pos(n, indice,1);
		decal_circ_dg := res * 10 + extr_pos(n, positions,1);
	End
	Else if nbr_decalage>1 Then decal_circ_dg := decal_circ_dg(decal_circ_dg(n, nbr_decalage-1), 1)
	Else decal_circ_dg := n;
End;
//
//**********************************************************************************************************************
// 25
Function decal_circ_gd(n, nbr_decalage : Integer):Integer;
Var positions, res, indice : Integer;
Begin
	positions := nb_pos(n);
	res := 0;
	if nbr_decalage=1 Then
	Begin
		for indice:= positions DownTo 2 Do res := res * 10 + extr_pos(n,indice,1);
		decal_circ_gd := res + (n mod 10) * puiss(10,positions-1)
	End
	Else if nbr_decalage > 1 Then decal_circ_gd := decal_circ_gd(decal_circ_gd(n,nbr_decalage-1)  , 1)
	Else decal_circ_gd := n ;
End;
//
//**********************************************************************************************************************
// 26
Function inverse (n:Integer) : Integer;
var res, position, i :Integer;
Begin
	position := nb_pos(n);
	res :=0;
	for i:=1 to position Do
	Begin
		res := res*10 + extr_pos(n,i,1);
	End;
	inverse := res;
End;
//
//**********************************************************************************************************************
// 27
function uniq (n : Integer) : Boolean;
Var digit : integer;
Begin
	digit := 0;
	While (freq_ch(n,digit) < 2) and (digit < 10) Do
	Begin
		digit := digit+1
	End;
	uniq := (freq_ch(n,digit) < 2)
End;
//
//**********************************************************************************************************************
// 28
Function del_pos(n , po : Integer):Integer;
Begin
	del_pos := n div puiss(10,po)  *  puiss(10,po-1)   +   n mod puiss(10,po-1)
End;
//
//**********************************************************************************************************************
// 29
Function del_ch (n,ch : Integer) : Integer ;
Begin
	While freq_ch(n,ch) <> 0 Do n := del_pos(n, pos_dg(n,ch));
	del_ch := n;
End;
//
//**********************************************************************************************************************
// 30
Function maxDG (n : Integer) : Integer ;
Var i,max,positions : Integer;
Begin
	positions := nb_pos(n);
	max := 0;
	for i:=1 to positions Do if extr_pos(n,i,1) > max then max := extr_pos(n,i,1);
	maxDG :=  max
End;
//
//**********************************************************************************************************************
// 31
Function minDG (n : Integer) : Integer ;
Var i,min,positions : Integer;
Begin
	positions := nb_pos(n);
	min := 9;
	for i:=1 to positions Do if extr_pos(n,i,1) < min then min := extr_pos(n,i,1);
	minDG :=  min
End;
//
//**********************************************************************************************************************
// 32
Function deficient(n : Integer) : Boolean;
Begin
	if n < 1 Then deficient := False
	Else deficient := ( n > SDIV(n) ) ;
End;
//
//**********************************************************************************************************************
// 33
Function abondant(n : Integer) : Boolean;
Begin
	if n < 1 Then abondant := False
	Else abondant := ( n < SDIV(n) ) ;
End;
//
//**********************************************************************************************************************
// 34
Function super_abondant(n : Integer) : Boolean;
Var taux_n : real; precedent : Integer;
Begin
	if abondant(n) Then
	Begin
		taux_n := SDIV(n) / n ;
		precedent := n - 1;
		While (precedent > 0) and (taux_n > (SDIV(precedent)/precedent)) Do precedent := precedent - 1;
		super_abondant := precedent <= 0;
	End
	Else super_abondant := False ;
End;
//
//**********************************************************************************************************************
// 35
Function aleatoire(a,b : Integer) : Integer;
Begin
	aleatoire := Random(b-a+1) + a    //    0 <= random(x) < x
End;
//
//**********************************************************************************************************************
// 36
Function facto(n:Integer):Integer ;
var res,i:Integer;
begin
	res:=1;
	for i:=1 to n do
	begin
		res:=i*res;
	end;
	facto:=res;
end;
//
//**********************************************************************************************************************
// 37
Function arrang (n, p : Integer) : Integer;
Begin
	Arrang := facto(n) div facto(n-p);
End;
//
//**********************************************************************************************************************
// 38
Function comb (n,p : Integer) : Integer;
Begin
	comb := facto(n) div ( facto(p) * facto(n-p) );
End;
//
//**********************************************************************************************************************
// 39
Function max(n1,n2:Integer):Integer;
begin
	if n1 < n2 then max := n2
	else max := n1;
end;
//
//**********************************************************************************************************************
// 40
Function min(n1,n2 : Integer):Integer;
begin
	if n1 > n2 then min := n2
	else min := n1  ;
end;
//
//**********************************************************************************************************************
// 41
Procedure permut (Var a,b : Integer);
Var tmp : Integer;
Begin
	tmp := a ;
	a := b ;
	b := tmp ;
End;
//
//**********************************************************************************************************************
// 42
Function somme_ch (n : Integer) : Integer;
var somme, i, p : Integer;
Begin
	p := nb_pos(n);
  somme := 0;
  for i:=1 to p Do
  Begin
 	 somme := somme + extr_pos(n,i,1);
  End;
  somme_ch := somme;
End;
//
//**********************************************************************************************************************
// 43
Function produit_ch (n : Integer) : Integer;
var produit, i, p : Integer;
Begin
	p := nb_pos(n);
  produit := 1;
  for i:=1 to p Do
  Begin
 	 produit := produit * extr_pos(n,i,1);
  End;
  produit_ch := produit;
End;
//
//**********************************************************************************************************************
// 44
Function switch_pos(n, p1, p2 : Integer):Integer;
Var tmp : integer;
Begin
	tmp := extr_pos(n,p1,1);
	n := change_pos(n,p1,extr_pos(n,p2,1));
	switch_pos := change_pos(n,p2,tmp);
End;
//
//**********************************************************************************************************************
// 45
function same_dg (n1,n2 : Integer) : Boolean;
Var ch : Integer; check : Boolean;
Begin
	ch := 0;
	check := True;
	While check and (ch < 10) Do
	Begin
		check := ((freq_ch(n1,ch)>0) and (freq_ch(n2,ch)>0)) Or ((freq_ch(n1,ch)=0) and (freq_ch(n2,ch)=0))   ;
		ch := ch + 1;
	End;
	same_dg := check;
End;
//
//**********************************************************************************************************************
// 46
Function ins_num (n, to_insert, position : Integer) : Integer ;
var g, d : Integer;
Begin
	d := n mod puiss(10,position-1);
	g := n div puiss(10,position-1);
	ins_num := g * puiss(10, nb_pos(to_insert)+position-1)  +  to_insert * puiss(10,position-1)  +  d
End;
//
//**********************************************************************************************************************
// 47
Function two_identical_parts (n : Integer) : Boolean;
Var p : Integer;
Begin
	p := Nb_Pos(n);
	if p mod 2 = 1 Then two_identical_parts := False
	Else if (extr_pos(n, 1, p div 2) = extr_pos(n, (p div 2)+1, p div 2)) Then two_identical_parts := True
	Else two_identical_parts := False
End;
//
//**********************************************************************************************************************
// 48
Function Meme_Centre (n : Integer) : Boolean;
Var
	p, extr, i : Integer;
	check: Boolean;
Begin
	p := Nb_Pos(n);
	if p > 1 Then
	Begin
		if p mod 2 = 0 Then extr := extr_pos(n, p div 2, 2)
		Else extr := extr_pos(n, p div 2, 3);
		i := 0;
		check := False;
		While (i < 10) And Not check Do
		Begin
			check := same_dg(extr, i);
			i := i+1;
		End;
		Meme_Centre := check;
	End
	Else Meme_Centre := False
End;
//
//**********************************************************************************************************************
// 49

//
//**********************************************************************************************************************
// 50

//
//**********************************************************************************************************************
//

//
//**********************************************************************************************************************
//

//
//**********************************************************************************************************************
//




// __init__
Begin
	Randomize;
	
End.