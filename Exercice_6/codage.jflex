/* exo4.flex */
%%
%class decode
%unicode
%line
%char
%column
%standalone

%{
public int n=0;
public String input, put;

%}

%{eof
System.out.println ("Le codage du mots: " +input+ " est:  "+(put));

%eof}

/* modeles yychar */
alphabet=[abc]+


%%
/* régles */
{alphabet} {  input=String.valueOf(yytext());
		
for(n=0; n<=input.length(); n++){
put=input.replace("a","0")
		.replace("b","01")
		.replace("c","11");
}}







