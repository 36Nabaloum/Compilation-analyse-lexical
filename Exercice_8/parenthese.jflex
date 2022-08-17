/* exo4.flex */
%%
%class parente
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
if(par==par_1){
			System.out.println("Le nombre de parentheses est: " +(par)+ " et sont bien former.");
}else {System.out.println("Le nombre de parentheses est: " +(par)+ " et sont mal former.");}

if(cro==cro_1){
			System.out.println("Le nombre de crochets est: " +(cro)+ " et sont bien former.");}
else {System.out.println("Le nombre de crochets est: " +(cro)+ " et sont mal former.");}

if(acc==acc_1){
			System.out.println("Le nombre de accolades est: " +(acc)+ " et sont bien former.");}
 else {System.out.println("Le nombre de accolades est: " +(acc)+ " et sont mal former.");}
 
%eof}

/* modeles yychar */
parenth_o=[(]+
parenth_f=[)]+
crochets_o=\[+
crochets_f=\]+
accolade_O=[{]+
accolade_f=[}]+


%%
/* régles */
{parenth_o} {  input=yytext();	
			for(n=1; n<=input.length(); n++){
			par++;
}}
{parenth_f} {  input=yytext();
			for(n=1; n<=input.length(); n++){
			par_1++;
}}


{crochets_o} {  input=yytext();	
			for(n=1; n<=input.length(); n++){
			cro++;
}}
{crochets_f} {  input=yytext();
			for(n=1; n<=input.length(); n++){
			cro_1++;
}}


{accolade_O} {  input=yytext();	
			for(n=1; n<=input.length(); n++){
			acc++;
}}
{accolade_f} {  input=yytext();
			for(n=1; n<=input.length(); n++){
			acc_1++;
}}








