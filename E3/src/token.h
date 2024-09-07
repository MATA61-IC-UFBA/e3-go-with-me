/* token.h */

typedef enum {
        ID = 256, 
	NUM, 
        KEY,
        // ADD,                      // +
        // SUBTRACT,                 // -
        // MULTIPLY,                 // *
        // DIVIDE,                   // /
        // MOD,                      // %
        // NOT,                      // !
        // LESS,                     // <
        // GREATER,                  // >
        // ATTRIBUTE,                // =
        // COLON,                    // :
        // SEMICOLON,                // ;
        // COMMA,                    // ,
        // OPAREN,                   // (
        // CPAREN,                   // )
        // OBRACKET,                 // [
        // CBRACKET,                 // ]
        // OBRACE,                   // {
        // CBRACE,                   // }
        // BACKSLASH,
        LEQUAL,                   // <=
        GEQUAL,                   // >=  
        EQUAL,                    // ==  
        NEQUAL,                   // !=  
        AND,                      // &&  
        OR,                       // ||
        KEY_IF,
        KEY_ARRAY,
        KEY_PRINT,
        KEY_BOOLEAN,
        KEY_CHAR,
        KEY_ELSE,
        KEY_FALSE,
        KEY_FOR,
        KEY_FUNCTION,
        KEY_INTEGER,
        KEY_RETURN,
        KEY_STRING,
        KEY_TRUE,
        KEY_VOID,
        KEY_WHILE,
        CHAR,
	STR,
	ERROR
} token_t; 

