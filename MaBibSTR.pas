{

	Created by Melzi Mounir
	Version 1.0

}

Unit MaBibSTR ;

Interface //////////////////////////////////////////////////////////////////////////////////////////////////////////////


Uses MaBibINT, MaBibTAB ;



(***************************************** Les Modules  standards dans Pascal *****************************************)
{

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Les Fonctions :
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	Chr(x) --> donne le caract�re (s'il est dans la liste des caract�res ASCII) dont la valeur est x

	CONCAT (ch1 [ ,ch2,.....,chn ] ) --> concat�ne plusieurs cha�nes de caract�res

	COPY (ch , p , l) --> donne � partir de la cha�ne ch une sous cha�ne de longueur l � partir de la position p

	LENGTH (ch) --> donne la longueur effective de la cha�ne ch. (Ne pas confondre la longueur effective de la cha�ne
									avec la dimension de la cha�ne)

	ORD (x) --> donne le num�ro d'ordre de la valeur scalaire associ�e. (la premi�re valeur a pour rang z�ro

	POS (ch1 , ch2) --> donne la position de la sous-cha�ne ch1 dans la cha�ne ch2
 											nota : si ch n'est pas trouv�e elle retourne la valeur z�ro.

	UPCASE (x) --> donne la majuscule de caract�re x. Si x n'a pas de majuscule, il reste inchang�


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Les Proc�dure :
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	DELETE ( ch , p , l ) --> supprime l caract�res de la cha�ne ch � partir de la position p.
														Si p est plus grand que la longueur de ch, aucun caract�re n'est supprim�.
														Si l d�signe plus de caract�res qu'il n'en reste, le reste de la cha�ne est supprim�.

	INSERT (ch1, ch2, p) --> inserre la cha�ne ch1 dans la cha�ne ch2 � partir de la position p

	VAL ( s, v, code) --> convertit une cha�ne en un nombre form� par la cha�ne.
												cependant si c <> 0 cela signifie qu'il y a une erreur, et code donne la position de l'erreur.

	STR ( N : Entier / Reel; var Ch: String) --> Convertit une valeur num�rique N en une cha�ne CH
												
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}
(*************************************** Les Modules  Non standards dans Pascal ***************************************)


{1} // Calculer la fr�quence d'apparition d'une sous-cha�ne (sch) dans une cha�ne de caract�res (ch). 
Function freq_schaine (ch, sch: String): Integer;

{2} // fonction qui effectue des d�calages circulaires de gauche vers droite
   // Exemple : (abcde,1) = eabcd
Function decalage_circ_gd(n:Integer; s:String): String;

{  } //


{  } //


{  } //


{  } //


{  } //


{  } //



////


Implementation /////////////////////////////////////////////////////////////////////////////////////////////////////////

// 1
Function freq_schaine(ch, sch: String): Integer;
Var
	cpt, len : Integer;
Begin
	cpt := 0;
	len := Length(sch);
	While Pos(sch, ch) > 0 Do
	Begin
		cpt := cpt +1;
		Delete(ch, Pos(sch, ch), len);
	End;
	freq_schaine := cpt;
End;
//
//**********************************************************************************************************************
// 2
Function decalage_circ_gd(n:Integer; s:String): String;
Var i: Integer;
Begin
	For i:=1 To n Do s := s[Length(s)] + Copy(s, 1, Length(s)-1);
	decalage_circ_gd := s
End;
//
//**********************************************************************************************************************
//

//
//**********************************************************************************************************************
//

//
//**********************************************************************************************************************
//

//
//**********************************************************************************************************************
//

//
//**********************************************************************************************************************
//

//
//**********************************************************************************************************************
//




End.