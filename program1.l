%option noyywrap
%{
int lines=0,spaces=0,tabs=0,restChars=0;
%}
%%
\n {lines++;}
[ ] {spaces++;}
\t {tabs++;}
. {restChars++;}
%%
int main(){
yylex();
printf("Total Lines=%d\nTotal Spaces=%d\nTotal Tabs=%d\nTotal Characters=%d\n",lines,spaces,tabs,restChars);
}