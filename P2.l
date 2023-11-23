%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
[+|-]*[0-9]+[.][0-9]* printf("%s is a floating point number",yytext);
[+|-]*[0-9]+ printf("%s is a not floating point number",yytext);
.;
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}

 
