%option noyywrap
%{
%}
%%
["<"|"<"][a-z A-Z 0-9]* [">"] { fprintf(yyout,"%s",yytext);}
%%
int main(void)
{
yyin=fopen("tags.txt","r");		
yyout=fopen("outputTags.txt","w");
yylex();
return 0;
}
