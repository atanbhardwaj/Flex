%option noyywrap
%{
%}
/*Starting character sequence for multiline comment*/
start \/\*
/*Ending character sequence for multiline comment*/
end  \*\/
%%
\/\/(.*) ;
{start}.*{end} ;
%%
int main(int k,char **argcv)
{
yyin=fopen(argcv[1],"r");
yyout=fopen("out.c","w");
/*call the yylex function.*/
yylex();
return 0;
}
