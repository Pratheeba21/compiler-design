%{
#include <stdio.h>
%}

DIGIT       [0-9]
NUMBER      {DIGIT}+
IDENTIFIER  [a-zA-Z_][a-zA-Z0-9_]*
OPERATOR    "+"|"-"|"*"|"/"
LPAREN      "("
RPAREN      ")"
WS          [ \t\n]

%%
{NUMBER}    { printf("NUMBER(%s)\n", yytext); }
{IDENTIFIER}{ printf("IDENTIFIER(%s)\n", yytext); }
{OPERATOR}  { printf("OPERATOR(%s)\n", yytext); }
{LPAREN}    { printf("LPAREN\n"); }
{RPAREN}    { printf("RPAREN\n"); }
{WS}        { /* Ignore whitespace */ }
.           { printf("UNKNOWN(%s)\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
