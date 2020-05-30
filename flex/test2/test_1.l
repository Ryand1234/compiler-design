%{

	#include "token.h"
%}

%%

":"		 return COMMA;
"db_type"	 { return TYPE; } 
"db_port"	 { return PORT; }
"db_address"	 { return ADDRESS; }
"db_ip"		 { return IP; }

[a-zA-Z0-9][a-zA-Z0-9\.]*	{ return IDENTIFIER; }
[0-9]*		{ return INTEGER; }
[ \t\n]		{ ; }
.		{ printf("undefined character\n"); }

%%

int yywrap(void){
	return 1;
}
