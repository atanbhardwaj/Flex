%option noyywrap
%{
int floats=0,integers=0;
%}
%%
^[0-9]+ {integers++;printf("Integer\n");}
^[0-9]++"."+[0-9]+ {floats++;printf("Float\n");}
. ;
%%
int main(){
yylex();
printf("Total Integers=%d\nTotal Float=%d",integers,floats);
return 0;
}