#include<stdio.h>
#include "token.h"

extern int yylineno;
extern char* yytext;
extern int yylex();

char *token[] = {NULL, "TYPE", "PORT", "IP", "ADDRESS", "IDENTIFIER", "INTEGER"};

int main()
{
	int ntoken;

	ntoken = yylex();
	while(ntoken)
	{
		printf("Found %s\n", yytext);
		ntoken = yylex();
	}
}
