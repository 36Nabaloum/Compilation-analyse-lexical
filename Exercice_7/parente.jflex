%%
%class parente
%unicode
%line
%char
%column
%standalone
%{
public int n=0,np=0, np1=0,np2=0;
public String input, put; 
%}
%{eof
if(np1==np2){
System.out.println ("Le nombre de parentheses est: " +(np1)+ " et sont bien former.");
} 
else {System.out.println("Le nombre de parentheses est: " +(np1)+ " et sont mal former.");}
%eof}

/* modeles */
ouvert=[(]+
ferme=[)]+

%%
/* régles */
{ouvert} {  input=yytext();	
			for(n=1; n<=input.length(); n++){
			np1++;
}}

{ferme} {  input=yytext();
			for(n=1; n<=input.length(); n++){
			np2++;
}}
