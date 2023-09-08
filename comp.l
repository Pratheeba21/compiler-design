%{
#include "comp.tab.h"
#include<stdlib.h>
%}
digit  [0-9]
letter  [A-Za-z]
%%
{digit}   {yylval=atoi(yytext);return NUM;}
{letter} {return ID;}
[ \t]       {}
[\n]	      {return 0;}
.    {return *yytext;}
%%
int yywrap()
{
return 1;
}
