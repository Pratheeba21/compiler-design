%{
#include<stdio.h>
#include "lex.yy.c"
%}
%token ALPHA NUM
%%
ID		:		ALPHA S {printf("\n VALID IDENTIFIER ");}
		;
S		:		ALPHA S
		|		NUM  S
		|
		;
%%
void main()
{
printf("\n Enter String:");
yyparse();
}
void yyerror(char *msg)
{
printf("\n INVALID IDENTIFIER");
}
