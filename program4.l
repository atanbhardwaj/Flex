%option noyywrap
%{
%}
%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short     {ECHO; printf("\nKEYWORD\n");}
[{};,()]   {ECHO; printf("\tSEPERATOR\t");}
[+-/=*%]   {ECHO; printf("\tOPERATOR\t");}
^[a-zA-z_][A-Za-z0-9_]* {ECHO; printf("\tIdentifier\t");}    
. ; 
%%
int main(void)
{
yylex();
return 0;
}