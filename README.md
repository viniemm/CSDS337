# CSDS 337: Compiler Design: Spring 2022

## Vinayak Mathur vxm167

### PG-1

####Changes made to front-source:

1. **parser.Parser** (128 - 142): added "for" to statements. Used "while" as boilerplate.
2. **parser.Parser** (247, 251): changed "unary" to "div".
3. **parser.Parser** (256 - 264): added logic for "div" between term and unary (higher precedence than multiplication and division).
4. **inter.For** (1-37): created file and modified it to behave like a for loop. Used "while" as boilerplate.  
5. **lexer.Lexer** (25-27): added "for" and "div" to reserved words.  
6. **lexer.Word** (26): added "div" to keywords.
6. **lexer.Tag** (8, 9): added tags for "for" (264) and "div" (259).  