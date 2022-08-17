/* exo4.flex */
%%
%class html
%unicode
%line
%char
%column
%standalone

%{
public int n=0,par,par_1,cro,cro_1,acc,acc_1;
public String input, put;

%}

%{eof

System.out.println("\n fin");
			
 
%eof}

/* modeles yychar */
hypertext=http://.jpg{1}
Script=http://.js{1}
css=http://.css{1}




%%
/* régles */
{hypertext} {

		System.out.printf("les lien %s sont:",yytext());	
}

{Script} {

		System.out.printf("les lien %s sont:",yytext());	
}
{css} {

		System.out.printf("les lien %s sont:",yytext());	
}




