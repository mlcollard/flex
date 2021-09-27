%{
#include <iostream>
%}

/* read only one input file */
%option noyywrap

%%

    /* Match a string of one or more digits */
[0-9]+  {
            /* yytext contains the matched text. */
            std::cout << "INTEGER: " << yytext << "\n";
        }

.|\n    {
            /* Ignore all other characters */
        }

%%

int main() {

    /* Output all the digits in the input */
    yylex();

    return 0;
}
