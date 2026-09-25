%{
#include <stdio.h>

int count = 0;
%}

%%
8[0-9]*     { count++; }
[0-9]+      { }
[ \t\n]+    { }
.           { }
%%

int main()
{
    printf("Enter numbers:\n");
    yylex();

    printf("Numbers starting with 8: %d\n", count);

    return 0;
}

int yywrap()
{
    return 1;
}
