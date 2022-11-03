{

	Created by Melzi Mounir
	Version 1.2.1

}

Unit MaBibTAB ;

Interface //////////////////////////////////////////////////////////////////////////////////////////////////////////////


Uses MaBibINT;

Const
	max1d = 1000;
	maxlin = 100;
	maxcol = 100;

Type

	ind1d = 1..max1d;
	ind2d_lin = 1..maxlin;
	ind2d_col = 1..maxcol;

	tab1d = Record
						Tab : Array[ind1d] of Integer;
						taille : Integer;
					End;

	tab2d = Record
						Tab : Array[ind2d_lin, ind2d_col] of Integer;
						lin : Integer;
						col : Integer;
					End;



{1} /// lire un tebleau 1D
Procedure lect1d( Var tab : tab1d );

{2} /// écrire un tableau 1D
Procedure ecrit1d( tab : tab1d );

{3} // calculer le nombre des suites d'ordre croissant contenues dans un tableau 1D
Function NbrSuites_ORDcroissant ( tab: tab1d ) : Integer;

{4} // calculer le nombre des suites d'ordre décroissant contenues dans un tableau 1D
Function NbrSuites_ORDdecroissant ( tab: tab1d ) : Integer;

{5} // donne l'indice du plus petit élément, compris entre les bornes a et b, du tableau tab
Function indice_petit(tab: tab1d; a,b: Integer): Integer;

{6} // donne l'indice du plus grand élément, compris entre les bornes a et b, du tableau tab
Function indice_grand(tab: tab1d; a,b: Integer): Integer;

{7} /// Trie le tableau tab selon la méthode par séléction
Procedure Tri_Selection (Var tab: tab1d );

{8} /// Trie le tableau tab selon la méthode par transposition
Procedure Tri_Transposition (Var tab: tab1d );

{9} /// Trie le tableau tab selon la méthode par Bulles
Procedure Tri_Bulles (Var tab: tab1d );

{10} /// Trie le tableau tab selon la méthode par comptage avec 3 tables
Procedure tri_Comptage3 (tab: tab1d; Var tab_trie: tab1d);

{11} /// Trie le tableau tab selon la méthode par comptage avec 2 tables................................................
//Procedure tri_Comptage2 (tab: tab1d );

{12} /// Trie le tableau tab selon la méthode par comptage avec 1 tables................................................
//Procedure tri_Comptage1 (tab: tab1d );

{13} // Compter le nombre d'éléments qui sont inférieurs (Strictement) au nombre 'element' dans le tableau 'tab'
Function NbrElemInf (tab: tab1d; element: Integer): Integer;  

{14} // Compter le nombre d'éléments qui sont superieurs (Strictement) au nombre 'element' dans le tableau 'tab'
Function NbrElemSup (tab: tab1d; element: Integer): Integer;  

{15} /// lire une matrice ( tableau 2D )
Procedure lect2d (Var mat: tab2d); 

{16} /// écrire une matrice ( tableau 2D ) avec le format d'une matrice
Procedure ecrit2d_shape (mat: tab2d);

{17} /// écrire une matrice ( tableau 2D ) avec le format linière (sans le format d'une matrice)
Procedure ecrit2d (mat: tab2d);

{18} /// Construire la matrice transposée "mat_trans"[n,m] d'une matrice "mat"[m,n]
Procedure transpose(mat: tab2d; Var mat_trans: tab2d); 

{19} /// Convertir un tableau 2D en un tableau 1D
Procedure Convert2Dto1D (mat:tab2d; Var tab:tab1d);

{20} /// Convertir un tableau 1D en un tableau 2D
Procedure Convert1Dto2D (tab:tab1d; Var mat:tab2d; lin,col:Integer); 

{21} /// Convertir la ligne 'n' dans la matrice 'mat' en un tableau 1D 'tab'
Procedure MlinToTab (mat:tab2d; n:Integer; Var tab:tab1d);

{22} /// Convertir la colonne 'n' dans la matrice 'mat' en un tableau 1D 'tab'
Procedure McolToTab (mat:tab2d; n:Integer; Var tab:tab1d);

{23} /// Calculer le produit de deux matrice A(la,ca) * B(lb,cb) = C(lc,cc)
Procedure produit_matriciel(A, B:tab2d; Var C:tab2d);

{24} // Retourner la colonne de plus petit élément dans la ligne 'n' de matrice 'mat'
Function Min_in_ligne(mat:tab2d; n:Integer): Integer;

{25} // Retourner la colonne de plus grand élément dans la ligne 'n' de matrice 'mat'
Function Max_in_ligne(mat:tab2d; n:Integer): Integer;

{26} // Retourner la ligne de plus petit élément dans la colonne 'n' de matrice 'mat'
Function Min_in_colonne(mat:tab2d; n:Integer): Integer;

{27} // Retourner la ligne de plus grand élément dans la colonne 'n' de matrice 'mat'
Function Max_in_colonne(mat:tab2d; n:Integer): Integer;

{28} // Vérifier si 'elem' est le plus petit élément dans la ligne 'l' de matrice 'mat'
Function IsIt_MinLigne(mat:tab2d; elem,l:Integer) : Boolean;

{29} // Vérifier si 'elem' est le plus grand élément dans la ligne 'l' de matrice 'mat'
Function IsIt_MaxLigne(mat:tab2d; elem,l:Integer) : Boolean;

{30} // Vérifier si 'elem' est le plus petit élément dans la colonne 'c' de matrice 'mat'
Function IsIt_MinColonne(mat:tab2d; elem,c:Integer) : Boolean;

{31} // Vérifier si 'elem' est le plus grand élément dans la colonne 'c' de matrice 'mat'
Function IsIt_MaxColonne(mat:tab2d; elem,c:Integer) : Boolean;

{32} /// Rechercher le point de selle d'une matrice s'il existe
Procedure point_de_selle(mat:tab2d; Var resultat:Integer; Var found:Boolean);

{33} /// remplire un tableau 1d avec des entiers aleatoires entre a et b
Procedure Aleatoire1D (Var tab:tab1d; a,b:Integer);

{34} /// remplire un tableau 2d avec des entiers aleatoires entre a et b
Procedure Aleatoire2D (Var mat:tab2d; a,b:Integer);

{35} // fonction pour vérifier si un élément 'n' existe dans un tableau 1D
Function linear_search(tab:tab1d; n:Integer): Boolean;

{36} // fonction pour vérifier si un élément 'n' existe dans un tableau 1D
    // ATTENTION : VOTRE TABLEAU DOIT ÊTRE TRIE !!
Function binary_search(tab:tab1d; n:Integer): Boolean;

{37} /// copier un tableau 1d (tab) dans un autre tableau 1d (cp)
Procedure Copy1d( tab:tab1d; Var cp:tab1d);

{38} /// copier un tableau 2d (tab) dans un autre tableau 2d (cp)
Procedure Copy2d( mat:tab2d; Var cp:tab2d);

{39} /// Remplir un tableau 1d avec les termes de la suite de fibonnacci inferieurs ou égaux à ' MAX_FIBO_NUM '
Procedure Fibo_TabGenMax (Var tab:tab1d; MAX_FIBO_NUM:Integer);

{40} // calculer le nombre d'apparition de 'elem' dans le tableau 'tab'
Function freq1d (tab:tab1d; elem:Integer) : Integer;

{41} // calculer le nombre d'apparition de 'elem' dans la matrice 'mat'
Function freq2d(mat:tab2d; elem:Integer) : Integer;

{42} // calculer le nombre d'apparition de 'elem' dans la ligne 'l' de la matrice 'mat'
Function freq2d_lin(mat:tab2d; l, elem:Integer): integer;

{43} // calculer le nombre d'apparition de 'elem' dans la colonne 'c' de la matrice 'mat'
Function freq2d_col(mat:tab2d; c, elem:Integer): integer;

{44} /// suprimer la case dans l'indice 'case_toDelete' du tableau 1d 'tab'
Procedure delete1d(Var tab:tab1d; case_toDelete:Integer);

{45} /// suprimer la ligne 'to_delete' de la matrice 'mat'
Procedure delete2d_lin(Var mat:tab2d; to_delete:Integer);

{46} /// suprimer la collone 'to_delete' de la matrice 'mat'
Procedure delete2d_col(Var mat:tab2d; to_delete:Integer);

{47} /// insérer une nouvelle case qui contient la valeur 'elem' dans un tableau 1d 'tab' et son indice est 'indice'
Procedure insert1d (Var tab:tab1d; elem, indice: Integer);
																		
{48} //


{49} //


{50} //


{  } //


////


Implementation /////////////////////////////////////////////////////////////////////////////////////////////////////////

// 1
Procedure lect1d( var tab : tab1d);
Var i : Integer;
Begin
	Write('Donner la taille du tableau : ');
	Readln(tab.taille);
	For i:=1 To tab.taille Do
	Begin
		Write('T[',i,'] = ');
		Readln(tab.Tab[i]);
	End;
End;
//
//**********************************************************************************************************************
// 2
Procedure ecrit1d( tab : tab1d );
Var i :Integer;
Begin
	For i:=1 To tab.taille Do
	Begin
		WriteLn('T[',i,'] = ', tab.tab[i]);
	End;
End;
//
//**********************************************************************************************************************
// 3
Function NbrSuites_ORDcroissant ( tab: tab1d ) : Integer;
Var i, NbrSuite, NbrElem : Integer;
Begin
	NbrSuite := 0;
	NbrElem := 1;
	i := 1;
	While i < tab.taille Do
	Begin
		While tab.tab[i] <= tab.tab[i+1] Do
		Begin
			NbrElem := NbrElem + 1;
			i := i+1;
		End;
		If NbrElem > 1 Then
		Begin
			NbrSuite := NbrSuite + 1;
			NbrElem := 1;
		End;
		i := i+1;
	End;
	NbrSuites_ORDcroissant := NbrSuite;
End;
//
//**********************************************************************************************************************
// 4
Function NbrSuites_ORDdecroissant ( tab: tab1d ) : Integer;
Var i, NbrSuite, NbrElem : Integer;
Begin
	NbrSuite := 0;
	NbrElem := 1;
	i := 1;
	While i < tab.taille Do
	Begin
		While tab.tab[i] >= tab.tab[i+1] Do
		Begin
			NbrElem := NbrElem + 1;
			i := i+1;
		End;
		If NbrElem > 1 Then
		Begin
			NbrSuite := NbrSuite + 1;
			NbrElem := 1;
		End;
		i := i+1;
	End;
	NbrSuites_ORDdecroissant := NbrSuite;
End;
//
//**********************************************************************************************************************
// 5
Function indice_petit(tab: tab1d; a,b: Integer): Integer;
Var i, valmin, indmin: Integer;
Begin
	valmin := tab.tab[a];
	indmin := a;
	For i:=a+1 To b Do
	Begin
		If tab.tab[i] < valmin Then
		Begin
			valmin := tab.tab[i];
			indmin := i;
		End;
	End;
	indice_petit := indmin;
End;
//
//**********************************************************************************************************************
// 6
Function indice_grand(tab: tab1d; a,b: Integer): Integer;
Var i, valmax, indmax: Integer;
Begin
	valmax := tab.tab[a];
	indmax := a;
	For i:=a+1 To b Do
	Begin
		If tab.tab[i] > valmax Then
		Begin
			valmax := tab.tab[i];
			indmax := i;
		End;
	End;
	indice_grand := indmax;
End;
//
//**********************************************************************************************************************
// 7
Procedure Tri_Selection (Var tab: tab1d);
Var i: Integer;
Begin
	For i:=1 To tab.taille-1 Do permut( tab.tab[i], tab.tab[ indice_petit(tab, i, tab.taille) ] )
End;
//
//**********************************************************************************************************************
// 8
Procedure Tri_Transposition (Var tab: tab1d);
Var i, j : Integer;
Begin
	For i:=1 to tab.taille-1 Do
	Begin
		j := i;
		While ( tab.tab[j] > tab.tab[j+1] ) And (j > 0) Do
		Begin
			permut ( tab.tab[j], tab.tab[j+1] );
			j := j-1;
		End;
	End;
End;
//
//**********************************************************************************************************************
// 9
Procedure Tri_Bulles (Var tab: tab1d);
Var
	i, taille: Integer;
	quite: Boolean;
Begin
	taille := tab.taille;
	Repeat
		quite := True;
		For i:=1 To taille-1 Do
		Begin
			If tab.tab[i] > tab.tab[i+1] Then
			Begin
				permut( tab.tab[i], tab.tab[i+1] );
				quite := False;
			End;
		End;
		taille := taille - 1;
	Until quite;
End;
//
//**********************************************************************************************************************
// 10
Procedure tri_Comptage3 (tab: tab1d; Var tab_trie: tab1d);
Var
	tabcompt: tab1d;
	i, j, to_add : Integer;
Begin
	tab_trie.taille := tab.taille;
	For i:=1 To tab.taille Do tabcompt.tab[i] := NbrElemInf( tab, tab.tab[i] );
	For i:=1 To tab.taille-1 Do
	Begin
		to_add := 0;
		For j:=i+1 To tab.taille Do If tabcompt.tab[i] = tabcompt.tab[j] Then
		Begin
			to_add := to_add + 1;
			tabcompt.tab[j] := tabcompt.tab[j] + to_add
		End
	End;
	For i:=1 To tab.taille Do tab_trie.tab[ tabcompt.tab[i] + 1  ] := tab.tab[i]
End;
//
//**********************************************************************************************************************
// 11
(*

//Procedure tri_Comptage2 (tab: tab1d);

*)
//
//**********************************************************************************************************************
// 12
(*

//Procedure tri_Comptage1 (tab: tab1d);

*)
//
//**********************************************************************************************************************
// 13
Function NbrElemInf (tab: tab1d; element: Integer): Integer;
Var i, Elems: Integer;
Begin
	Elems := 0;
	For i:=1 To tab.taille Do	If tab.tab[i] < element Then elems := elems + 1;
	NbrElemInf := Elems;
End;
//
//**********************************************************************************************************************
// 14
Function NbrElemSup (tab: tab1d; element: Integer): Integer;
Var i, Elems: Integer;
Begin
	Elems := 0;
	For i:=1 To tab.taille Do	If tab.tab[i] > element Then elems := elems + 1;
	NbrElemSup := Elems;
End;
//
//**********************************************************************************************************************
// 15
Procedure lect2d (Var mat: tab2d);
Var i, j : Integer;
Begin
	Write('Entrer le nombre des lignes de votre matrice: '); Readln(mat.lin);
	Write('Entrer le nombre des colonnes de votre matrice: '); Readln(mat.col);
	For i:=1 To mat.lin Do
		For j:=1 To mat.col Do
		Begin
			Write('T[',i,',',j,'] = ');
			Readln(mat.tab[i,j]);
		End;
End;
//
//**********************************************************************************************************************
// 16
Procedure ecrit2d_shape (mat: tab2d);
Var i, j : Integer;
Begin
	For i:=1 To mat.lin Do
	Begin
		For j:=1 to mat.col Do Write(mat.tab[i,j],'  ');
		WriteLn('');
	End;
End;
//
//**********************************************************************************************************************
// 17
Procedure ecrit2d (mat: tab2d);
Var i, j : Integer;
Begin
	For i:=1 To mat.lin Do
	Begin
		For j:=1 to mat.col Do Writeln('T[',i,',',j,'] = ', mat.tab[i,j]);
		WriteLn('');
	End;
End;
//
//**********************************************************************************************************************
// 18
Procedure transpose(mat: tab2d; Var mat_trans: tab2d);
Var i, j : Integer;
Begin
	mat_trans.lin := mat.col;
	mat_trans.col := mat.lin;
	For i:=1 To mat.lin Do
		For j:=1 To mat.col Do
			mat_trans.tab[j,i] := mat.tab[i,j];
End;
//
//**********************************************************************************************************************
// 19
Procedure Convert2Dto1D (mat:tab2d; Var tab:tab1d);
Var i, j, k : Integer;
Begin
	tab.taille := mat.lin * mat.col;
	k := 1;
	For i:=1 To mat.lin Do
		for j:=1 To mat.col Do
		Begin
			tab.tab[k] := mat.tab[i,j];
			k := k +1;
		End;
End;
//
//**********************************************************************************************************************
// 20
Procedure Convert1Dto2D (tab:tab1d; Var mat:tab2d; lin,col:Integer);
Var i, j, k :Integer;
Begin
	k := 1;
	mat.lin := lin;
	mat.col := col;
	For i:=1 To lin Do
		for j:=1 To col Do
			If k <= tab.taille Then
			Begin
				mat.tab[i,j] := tab.tab[k];
				k := k +1;
			End;
End;
//
//**********************************************************************************************************************
// 21
Procedure MlinToTab (mat:tab2d; n:Integer; Var tab:tab1d);
Var i : Integer;
Begin
	tab.taille := mat.col;
	For i:=1 To mat.col Do tab.tab[i] := mat.tab[n,i]
End;
//
//**********************************************************************************************************************
// 22
Procedure McolToTab (mat:tab2d; n:Integer; Var tab:tab1d);
Var i : Integer;
Begin
	tab.taille := mat.lin;
	For i:=1 To mat.lin Do tab.tab[i] := mat.tab[i,n]
End;
//
//**********************************************************************************************************************
// 23
Procedure produit_matriciel(A, B:tab2d; Var C:tab2d);
Var i, j, k : Integer;
Begin
	if a.col = b.lin Then
	Begin
		c.lin := a.lin;
		c.col := b.col;
		For i:=1 to c.lin Do
		For j := 1 to c.col Do
		Begin
			c.tab[i,j] := 0;
			For k:= 1 To a.col Do C.tab[i,j] := C.tab[i,j] + ( A.tab[i,k] * B.tab[k,j] )
		End
	End
	Else
	Begin
		WriteLn('Vous avez entrer des dimension invalides pour vos matrices');
		WriteLn('ATTENTION !! Le résultat dans la matrice produit ''C'' est corrompu')
	End
End;
//
//**********************************************************************************************************************
// 24
Function Min_in_ligne(mat:tab2d; n:Integer): Integer;
Var tab: tab1d;
Begin
	MlinToTab(mat,n, tab);
	Min_in_ligne := indice_petit(tab, 1, tab.taille)
End;
//
//**********************************************************************************************************************
// 25
Function Max_in_ligne(mat:tab2d; n:Integer): Integer;
Var tab: tab1d;
Begin
	MlinToTab(mat,n, tab);
	Max_in_ligne := indice_grand(tab, 1, tab.taille)
End;
//
//**********************************************************************************************************************
// 26
Function Min_in_colonne(mat:tab2d; n:Integer): Integer;
Var tab: tab1d;
Begin
	McolToTab(mat, n, tab);
	Min_in_colonne := indice_petit(tab, 1, tab.taille)
End;
//
//**********************************************************************************************************************
// 27
Function Max_in_colonne(mat:tab2d; n:Integer): Integer;
Var tab: tab1d;
Begin
	McolToTab(mat,n, tab);
	Max_in_colonne := indice_grand(tab, 1, tab.taille)
End;
//
//**********************************************************************************************************************
// 28
Function IsIt_MinLigne(mat:tab2d; elem,l:Integer) : Boolean;
Var i: Integer;
Begin
	i:=1;
	While (elem <= mat.tab[l,i]) And (i<=mat.col) Do i:=i+1;
	IsIt_MinLigne := i>mat.col ;
End;
//
//**********************************************************************************************************************
// 29
Function IsIt_MaxLigne(mat:tab2d; elem,l:Integer) : Boolean;
Var i: Integer;
Begin
	i:=1;
	While (elem >= mat.tab[l,i]) And (i<=mat.col) Do i:=i+1;
	IsIt_MaxLigne := i>mat.col ;
End;
//
//**********************************************************************************************************************
// 30
Function IsIt_MinColonne(mat:tab2d; elem,c:Integer) : Boolean;
Var i: Integer;
Begin
	i:=1;
	While (elem <= mat.tab[i,c]) And (i<=mat.lin) Do i:=i+1;
	IsIt_MinColonne := i>mat.lin ;
End;
//
//**********************************************************************************************************************
// 31
Function IsIt_MaxColonne(mat:tab2d; elem,c:Integer) : Boolean;
Var i: Integer;
Begin
	i:=1;
	While (elem >= mat.tab[i,c]) And (i<=mat.lin) Do i:=i+1;
	IsIt_MaxColonne := i>mat.lin ;
End;
//
//**********************************************************************************************************************
// 32
Procedure point_de_selle(mat:tab2d; Var resultat:Integer; Var found:Boolean);
Var i, j :Integer;
Begin
	i:=1;
	Repeat
		j:=1;
		Repeat
			found := IsIt_MaxLigne(mat,mat.tab[i,j],i) And IsIt_MinColonne(mat,mat.tab[i,j],j);
			If found Then  resultat := mat.tab[i,j];
			j := j+1
		Until found or (j>mat.col);
		i := i+1
	Until found or (i>mat.lin)
End;
//
//**********************************************************************************************************************
// 33
Procedure Aleatoire1D (Var tab:tab1d; a,b:Integer);
Var i:Integer;
Begin
	Write('Donner la taille du tableau : '); Readln(tab.taille);
	For i:=1 To tab.taille Do tab.tab[i] := aleatoire(a, b);
End;
//
//**********************************************************************************************************************
// 34
Procedure Aleatoire2D (Var mat:tab2d; a,b:Integer);
Var i, j :Integer;
Begin
	Write('Entrer le nombre des lignes de votre matrice: '); Readln(mat.lin);
	Write('Entrer le nombre des colonnes de votre matrice: '); Readln(mat.col);
	For i:=1 To mat.lin Do	For j:=1 To mat.col Do	mat.tab[i,j] := aleatoire(a, b);
End;
//
//**********************************************************************************************************************
// 35
Function linear_search(tab:tab1d; n:Integer): Boolean;
Var
	i : Integer;
	not_found : Boolean;
Begin
	i := 1;
	not_found := True;
	While (i <= tab.taille) And not_found Do
	Begin
		not_found := tab.tab[i] <> n ;
		i := i +1
	End;
	linear_search := Not not_found
End;
//
//**********************************************************************************************************************
// 36
Function binary_search (tab:tab1d; n:Integer): Boolean;
Var
	milieu, a, b : Integer;
	trouvee : Boolean;
Begin
	a := 1;
	b := tab.taille;
	trouvee := False;
	While (Not trouvee) And (a <= b) Do
	Begin
		milieu := (a + b) div 2;
		if tab.tab[milieu] = n Then trouvee := True
		Else if tab.tab[milieu] < n Then a := milieu + 1
		Else b := milieu - 1
	End;
	binary_search := trouvee
End;
//
//**********************************************************************************************************************
// 37
Procedure Copy1d( tab:tab1d; Var cp:tab1d);
Var i : Integer;
Begin
	cp.taille := tab.taille;
	For i:=1 To tab.taille Do
		cp.tab[i] := tab.tab[i]
End;
//
//**********************************************************************************************************************
// 38
Procedure Copy2d( mat:tab2d; Var cp:tab2d);
Var i, j : Integer;
Begin
	cp.lin := mat.lin;
	cp.col := mat.col;
	For i:=1 To mat.lin Do
		For j:=1 To mat.col Do
			cp.tab[i,j] := mat.tab[i,j]
End;
//
//**********************************************************************************************************************
// 39
Procedure Fibo_TabGenMax (Var tab:tab1d; MAX_FIBO_NUM:Integer);
Var i: Integer;
Begin
	IF MAX_FIBO_NUM < 1 Then	tab.taille := 0
	Else
	Begin
		tab.tab[1] := 1;
		tab.tab[2] := 1;
		i := 3;
		While tab.tab[i-1] + tab.tab[i-2] <= MAX_FIBO_NUM Do
		Begin
			tab.tab[i] := tab.tab[i-1] + tab.tab[i-2];
			i := i + 1;
		End;
		tab.taille := i - 1;
	End;
End;
//
//**********************************************************************************************************************
// 40
Function freq1d(tab:tab1d; elem:Integer) : Integer;
Var i, cpt : Integer;
Begin
	cpt := 0;
	for i:=1 to tab.taille Do
		if tab.tab[i] = elem Then cpt := cpt + 1;
	freq1d := cpt
End;
//
//**********************************************************************************************************************
// 41
Function freq2d(mat:tab2d; elem:Integer) : Integer;
Var i, j, cpt: Integer;
Begin
	cpt := 0;
	for i:=1 to mat.lin Do
		for j:=1 to mat.col Do
			if mat.tab[i,j] = elem Then cpt := cpt + 1;
	freq2d := cpt
End;
//
//**********************************************************************************************************************
// 42
Function freq2d_lin(mat:tab2d; l, elem:Integer): integer;
Var i, cpt : Integer;
Begin
	cpt := 0;
	for i:=1 to mat.col Do
		if mat.tab[l,i] = elem Then cpt := cpt + 1;
	freq2d_lin := cpt
End;
//
//**********************************************************************************************************************
// 43
Function freq2d_col(mat:tab2d; c, elem:Integer): integer;
Var i, cpt : Integer;
Begin
	cpt := 0;
	for i:=1 to mat.lin Do
		if mat.tab[i,c] = elem Then cpt := cpt + 1;
	freq2d_col := cpt
End;
//
//**********************************************************************************************************************
// 44
Procedure delete1d(Var tab:tab1d; case_toDelete:Integer);
Var i:Integer;
Begin
	if (case_todelete >=1) and (case_todelete <= tab.taille) Then
	Begin
		For i:=case_todelete to tab.taille-1 Do tab.tab[i] := tab.tab[i+1];
		tab.taille := tab.taille - 1;
	End;
End;
//
//**********************************************************************************************************************
// 45
Procedure delete2d_lin(Var mat:tab2d; to_delete:Integer);
Var i, j: Integer;
Begin
	if (to_delete >= 1) and (to_delete <= mat.lin) Then
	Begin
		For i:=to_delete To mat.lin-1 Do
			For j:=1 To mat.col Do
				mat.tab[i,j] := mat.tab[i+1,j];
		mat.lin := mat.lin - 1;
	End;
End;
//
//**********************************************************************************************************************
// 46
Procedure delete2d_col(Var mat:tab2d; to_delete:Integer);
Var i, j: Integer;
Begin
	if (to_delete >= 1) and (to_delete <= mat.col) Then
	Begin
		For i:=1 to mat.lin Do
			For j:=to_delete To mat.col-1 Do
				mat.tab[i,j] := mat.tab[i,j+1];
		mat.col := mat.col - 1;
	End;
End;
//
//**********************************************************************************************************************
// 47
Procedure insert1d (Var tab:tab1d; elem, indice: Integer);
Var i:Integer;
Begin
	if tab.taille < max1d Then
	Begin
		For i:=tab.taille DownTo indice Do tab.tab[i+1] := tab.tab[i];
		tab.tab[indice] := elem;
		if indice <= tab.taille Then tab.taille := tab.taille + 1
		Else tab.taille := indice;
	End
	Else WriteLn('Votre taille du tableau est maximal, vous ne pouvez pas insérer une nouvelle case !!');
End;
//
//**********************************************************************************************************************
// 48

//
//**********************************************************************************************************************
// 49

//
//**********************************************************************************************************************
// 50

//
//**********************************************************************************************************************
//



End.