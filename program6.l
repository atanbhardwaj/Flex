%option noyywrap
%{
#include<stdio.h>
%}
%%
[\t" "]+ fprintf(yyout," ");		
.|\n fprintf(yyout,"%s",yytext);	
%%
int main(void)
{
yyin=fopen("input.txt","r");		
yyout=fopen("output.txt","w");
/*call the yylex function.*/
yylex();
return 0;
}
