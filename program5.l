%option noyywrap
%{ 
    int ws=0, w=0, c=0;
%}
%%
[a-z A-Z 0-9]* w++;
[\t\n] ws++;
. c++;
%%   
int main()
{
    extern FILE* yyin;
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Line= %d word=%d total char=%d \n", ws, w, c);
return 0;
}
