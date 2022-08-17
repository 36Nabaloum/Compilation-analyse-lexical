/* exo4.flex */
%%
%class compt
%unicode
%line
%char
%column
%standalone

%{
public int n=0, voy=0,con=0,pon=0,car=0;
public String input;
%}

%{eof
System.out. println ("le nombre de Voyelles est: "+(voy));
System.out. println ("le nombre de Consonnes est: "+(con));
System.out. println ("le nombre de ponctuations est: "+(pon));
System.out. println ("le nombre de caracteres est: "+(car+voy+con+pon));
%eof}

voyelle=[aeiouy]+ 
poncte=[!,.?:]+
consone=[^voyelle]
caracteres=[^ ]
 
%%
/* régles */
{voyelle} {  input=String.valueOf(yytext());
for(n=1; n<=input.length(); n++){
voy++;
}}

{poncte} {  input=yytext();
for(n=1; n<=input.length(); n++){
pon++;
}
}   

{consone} {  input=yytext();
for(n=1; n<=input.length(); n++){
con++;
}
}

{caracteres} {  input=yytext();
for(n=1; n<=input.length(); n++){
car++;
}
}





