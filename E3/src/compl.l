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

"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"%"         { return '%'; }
"!"         { return '!'; }
"<"         { return '<'; }
">"         { return '>'; }
"="         { return '='; }
":"         { return ':'; }
";"         { return ';'; }
","         { return ','; }
"("         { return '('; }
")"         { return ')'; }
"["         { return '['; }
"]"         { return ']'; }
"{"         { return '{'; }
"}"         { return '}'; }
"\\"        { return '\\'; }

"<="        { return LEQUAL; }
">="        { return GEQUAL; }
"=="        { return EQUAL; }
"!="        { return NEQUAL; }
"&&"        { return AND; }
"||"        { return OR; }

"array"     { return KEY_ARRAY; }
"boolean"   { return KEY_BOOLEAN; }
"char"      { return KEY_CHAR; }
"else"      { return KEY_ELSE; }
"false"     { return KEY_FALSE; }
"for"       { return KEY_FOR; }
"function"  { return KEY_FUNCTION; }
"if"        { return KEY_IF; }
"integer"   { return KEY_INTEGER; }
"print"     { return KEY_PRINT; }
"return"    { return KEY_RETURN; }
"string"    { return KEY_STRING; }
"true"      { return KEY_TRUE; }
"void"      { return KEY_VOID; }
"while"     { return KEY_WHILE; }

[0-9]* { return NUM; }

[A-Za-z][A-Za-z0-9_]{0,255} { return ID; }

. { return ERROR; }


%%




