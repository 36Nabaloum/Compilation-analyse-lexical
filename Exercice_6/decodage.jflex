/* exo4.flex */
%%
%class decodage
%unicode
%line
%char
%column
%standalone

%{
public int i;
public String decode,texte="";

%}

%{eof
System.out.println ("Le decodage du mots: " +decode+ " est: "+(texte));

%eof}

/* modeles yychar */
alphabet=[0-9]+

%%
/* régles */
{alphabet} {  decode=String.valueOf(yytext());	
for(i=0;i<decode.length();i++)
{
do{ if(decode.charAt(i)=='0')
            { if(i!=decode.length()-1)
                {   if(decode.charAt(i+1)=='0')
                        {texte+="a"; i+=1;} else 
                    if(decode.charAt(i+1)=='1')
                        {texte+="b";i+=2;}
             }else {texte+="a";i++;}
}else
    
    if(decode .charAt(i)=='1')
            {  if(i!=decode.length()-1)

                        {   if(decode.charAt(i+1)=='0')
                                {texte+="c"; i+=1;} else 
                            if(decode.charAt(i+1)=='1')
                                {texte+="c";i+=2;}

                          }else {texte+="1";i++;}
            }

}  while(i<decode.length()); 

}

}








