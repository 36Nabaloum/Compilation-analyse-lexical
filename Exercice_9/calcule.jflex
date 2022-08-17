%%
%class somme
%unicode
%line
%char
%column
%standalone
%{
public int n=0,i,sum=0;
public String input;
%}

%{eof
		 
System.out. println ("\n La moyenne de la somme des entiers est "
+((sum+0.0)/n));
    System.out. println ("\nFini");
	
%eof}


/* modeles */
entiers=[0-9]+
ope=\+
ope1=\-
ope2=\*
ope3=\/
 
%%
/* régles */

{entiers} { input=yytext();}


{ope} {System.out. print ("Ope("+yytext()+") ") ;
sum=Integer.input.charAt(i)+input.charAt(i+1);
}

{ope1} {sum+=.valueOf(yytext()).intValue() ;}
{ope2} {System.out. print ("Ope2("+yytext()+") ") ;}
{ope3} {System.out. print ("Ope3("+yytext()+") ") ;}

\n { ; }
. { ; }
