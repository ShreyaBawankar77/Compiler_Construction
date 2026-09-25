# Experiment 1 – Introduction to LEX Tool

## Aim

To study the LEX tool and understand its metadata, patterns, and basic structure.

## Theory

LEX is a lexical analyzer generator used in compiler design. It takes patterns and corresponding actions as input and generates a lexical analyzer.

A LEX program consists of three main sections:

1. **Definitions / Metadata Section** – Contains C declarations and header files.
2. **Rules / Patterns Section** – Contains regular-expression patterns and their corresponding actions.
3. **User Subroutine Section** – Contains C functions such as `main()` and `yywrap()`.

## LEX Program

```lex
%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("Number: %s\n", yytext); }
[a-zA-Z]+   { printf("Word: %s\n", yytext); }
%%

int main()
{
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
```

## Sample Input

```text
hello 123 world
```

## Sample Output

```text
Word: hello
Number: 123
Word: world
```

## Important Functions

* `yylex()` – Starts lexical analysis.
* `yytext` – Stores the currently matched text.
* `yywrap()` – Indicates the end of input.
* `printf()` – Displays the matched token.

## Commands to Run

```bash
flex program.l
gcc lex.yy.c -o program
./program
```

## Conclusion

The basic LEX program was successfully implemented to recognize words and numbers using regular-expression patterns.
