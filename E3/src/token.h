/* token.h */

typedef enum {
        ID = 256, 
	NUM, 
        KEY,
        ADD,                      // +
        SUBTRACT,                 // -
        MULTIPLY,                 // *
        DIVIDE,                   // /
        MOD,                      // %
        NOT,                      // !
        LESS,                     // <
        GREATER,                  // >
        ATTRIBUTE,                // =
        COLON,                    // :
        SEMICOLON,                // ;
        COMMA,                    // ,
        OPAREN,                   // (
        CPAREN,                   // )
        OBRACKET,                 // [
        CBRACKET,                 // ]
        OBRACE,                   // {
        CBRACE,                   // }
        BACKSLASH,
        LEQUAL,                   // <=
        GEQUAL,                   // >=  
        EQUAL,                    // ==  
        NEQUAL,                   // !=  
        AND,                      // &&  
        OR,                       // ||
        SYMC, 
        CHAR,
	STR,
	ERROR
} token_t; 

