%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

%%
"//".* { /*pula comentário */ }

[ \n\t\r]+ { /*pula espacejamento */ }

(\'\ \'|\'\\n\'|\'\\0\'|\'\\\'\'|\'[a-zA-Z]\') { return CHAR; }

\"([^\\\n]|\\n|\\0)*\" { return STR; }

"+"         { return ADD; }
"-"         { return SUBTRACT; }
"*"         { return MULTIPLY; }
"/"         { return DIVIDE; }
"%"         { return MOD; }
"!"         { return NOT; }
"<"         { return LESS; }
">"         { return GREATER; }
"="         { return ATTRIBUTE; }
":"         { return COLON; }
";"         { return SEMICOLON; }
","         { return COMMA; }
"("         { return OPAREN; }
")"         { return CPAREN; }
"["         { return OBRACKET; }
"]"         { return CBRACKET; }
"{"         { return OBRACE; }
"}"         { return CBRACE; }
"\\"        { return BACKSLASH; }

"<="        { return LEQUAL; }
">="        { return GEQUAL; }
"=="        { return EQUAL; }
"!="        { return NEQUAL; }
"&&"        { return AND; }
"||"        { return OR; }

(array|boolean|char|else|false|for|function|if|integer|print|return|string|true|void|while) {return KEY; }

[0-9]* { return NUM; }

[A-Za-z][A-Za-z0-9_]{0,255} { return ID; }

. { return ERROR; }


%%




