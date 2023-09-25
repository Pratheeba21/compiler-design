%{
#include <stdio.h>
%}

DIGIT [0-9]

%%
{DIGIT}+        { printf("Number: %s\n", yytext); }
"+"             { printf("Operator: +\n"); }
"-"             { printf("Operator: -\n"); }
" "             ; // Ignore spaces
\n              ; // Ignore newlines
.               { printf("Invalid character: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
