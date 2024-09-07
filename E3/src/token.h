/* token.h */

typedef enum
{
        ID = 256,
        NUM,
        KEY,
        KEY_BOOLEAN,  // 259
        KEY_CHAR,     // 260
        KEY_ELSE,     // 261
        KEY_FALSE,    // 262
        KEY_FOR,      // 263
        KEY_FUNCTION, // 264
        KEY_IF,       // 265
        KEY_INTEGER,  // 266
        KEY_PRINT,    // 267
        KEY_RETURN,   // 268
        KEY_STRING,   // 269
        KEY_TRUE,     // 270
        KEY_VOID,     // 271
        KEY_WHILE,    // 272
        LEQUAL,       // 273
        GEQUAL,       // 274
        EQUAL,        // 275
        NEQUAL,       // 276
        AND,          // 277
        OR,           // 278
        KEY_ARRAY,
        CHAR,
        STR,
        ERROR
} token_t;
