%{
#include "ids.tab.h"
%}
letter  [A-Za-z]
digit  [0-9]
%%
{letter} {return ALPHA;}
{digit}   {return NUM;}
[ \t]       {}
[\n]	      {return 0;}
.    {return *yytext;}
%%
int yywrap()
{
return 1;
}
