%{
#include<stdio.h>
#include "lex.yy.c"
%}
%left'+' '-'
%left '*' '/'
%token ALPHA NUM ID
%%
S		:		ID '=' E  {printf("%d ",$3);}
		|		E	     {printf("%d",$1);}
		;
E		:		E '+' E {$$=$1+$3;}
		|		E '*' E  {$$=$1*$3;}
		|		NUM {$$=$1;}
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
