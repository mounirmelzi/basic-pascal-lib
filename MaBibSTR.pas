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


	Chr(x) --> donne le caractère (s'il est dans la liste des caractères ASCII) dont la valeur est x

	CONCAT (ch1 [ ,ch2,.....,chn ] ) --> concatène plusieurs chaînes de caractères

	COPY (ch , p , l) --> donne à partir de la chaîne ch une sous chaîne de longueur l à partir de la position p

	LENGTH (ch) --> donne la longueur effective de la chaîne ch. (Ne pas confondre la longueur effective de la chaîne
									avec la dimension de la chaîne)

	ORD (x) --> donne le numéro d'ordre de la valeur scalaire associée. (la première valeur a pour rang zéro

	POS (ch1 , ch2) --> donne la position de la sous-chaîne ch1 dans la chaîne ch2
 											nota : si ch n'est pas trouvée elle retourne la valeur zéro.

	UPCASE (x) --> donne la majuscule de caractère x. Si x n'a pas de majuscule, il reste inchangé


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Les Procédure :
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	DELETE ( ch , p , l ) --> supprime l caractères de la chaîne ch à partir de la position p.
														Si p est plus grand que la longueur de ch, aucun caractère n'est supprimé.
														Si l désigne plus de caractères qu'il n'en reste, le reste de la chaîne est supprimé.

	INSERT (ch1, ch2, p) --> inserre la chaîne ch1 dans la chaîne ch2 à partir de la position p

	VAL ( s, v, code) --> convertit une chaîne en un nombre formé par la chaîne.
												cependant si c <> 0 cela signifie qu'il y a une erreur, et code donne la position de l'erreur.

	STR ( N : Entier / Reel; var Ch: String) --> Convertit une valeur numérique N en une chaîne CH
												
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}
(*************************************** Les Modules  Non standards dans Pascal ***************************************)


{1} // Calculer la fréquence d'apparition d'une sous-chaîne (sch) dans une chaîne de caractères (ch). 
Function freq_schaine (ch, sch: String): Integer;

{2} // fonction qui effectue des décalages circulaires de gauche vers droite
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