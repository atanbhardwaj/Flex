%option noyywrap
%{
int count=0;
%}
%%
^[a-zA-Z_][A-Za-z_0-9]* {count++;printf("Valid Identifier\n");}
. ;
%%
int main(){
yylex();
printf("\nTotal Valid Identifiers=%d",count);
return 0;
}