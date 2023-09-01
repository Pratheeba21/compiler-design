%{
#include<stdio.h>
%}
digit([0-9])
letter([A-Za-z])
key void|main|int|float|printf|String
id({letter})({letter}|{digit})*
sep "{"|"}"|"("|")"|";"|","
op "+"|"-"|"="|"*"|"/"
int({digit})({digit})*
float({digit}+)"."({digit})*
oct [0]({digit}+)
litrl(\".*\")
%%
{key}         {fprintf(yyout,"\n %s is a keyword",yytext);}
{id}            {fprintf(yyout,"\n %s is an identifier",yytext);}
{oct}           {fprintf(yyout,"\n %s is an octal",yytext);}
{int}	{fprintf(yyout,"\n %s is an integer ",yytext);}
{float}	 {fprintf(yyout,"\n %s is a float",yytext);}
{litrl}	 {fprintf(yyout,"\n %s is a literal",yytext);}
{sep}	{fprintf(yyout,"\n %s is a seperator ",yytext);}
{op}	{fprintf(yyout,"\n %s is an operator",yytext);}	

.                   {}
%%
void main()
{
extern FILE *yyin,*yyout;
yyin=fopen("sample1.txt","r");
yyout=fopen("sample2.txt","w");
yylex();
}
int yywrap()
{
return 1;
}
