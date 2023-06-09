/*
 *  The scanner definition for COOL.
 */

/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially
 */
%{
#include <cool-parse.h>
#include <stringtab.h>
#include <utilities.h>

/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
	if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
		YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;
extern int verbose_flag;

extern YYSTYPE cool_yylval;

/*
 *  Add Your own definitions here
 */

#define APPEND_STRBUF(CHR) \
    if (string_buf_ptr - string_buf + 1 >= MAX_STR_CONST) { \
        cool_yylval.error_msg = "String constant too long";  \
        BEGIN(BROKEN_STRING); \
        memset(string_buf, 0, MAX_STR_CONST); \
        string_buf_ptr = string_buf; \
        return ERROR; \
    } \
    *string_buf_ptr++ = (CHR); 

extern IdTable idtable;
extern IntTable inttable;
extern StrTable stringtable;

unsigned int comment_depth = 0;
%}

/*
 * Define names for regular expressions here.
 */

DARROW          =>
LE              <=
DIGIT           [0-9]
UPPER           [A-Z]
LOWER           [a-z]
CHAR            [a-zA-Z0-9_]

%x COMMENT
%x STRING
%x BROKEN_STRING
%option noyywrap
%%

 /*
  *  Nested comments
  */

<INITIAL,COMMENT>"(*" {
    comment_depth++;
    BEGIN(COMMENT);
}

<COMMENT>"*)" {
    comment_depth--;
    if (!comment_depth) BEGIN(INITIAL);
}

<COMMENT>. {}

<COMMENT><<EOF>> {
    cool_yylval.error_msg = "EOF in comment";
    BEGIN(INITIAL);
    return ERROR;
}

<INITIAL>"*)" {
    cool_yylval.error_msg = "Unmatched *)";
    return ERROR;
}

<INITIAL>"--".*\n { curr_lineno++; }
<INITIAL>"--".* {}

 /*
  *  The multiple-character operators.
  */

{DARROW}	{ return DARROW; }
"<-"        { return ASSIGN; }
{LE}        { return LE; }
"/"         { return '/'; }
"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"("         { return '('; }
")"         { return ')'; }
"="         { return '='; }
"<"         { return '<'; }
"."         { return '.'; }
"~"         { return '~'; }
","         { return ','; }
";"         { return ';'; }
":"         { return ':'; }
"@"         { return '@'; }
"{"         { return '{'; }
"}"         { return '}'; }

 /*
  * Keywords are case-insensitive except for the values true and false,
  * which must begin with a lower-case letter.
  */

(?i:class)      { return CLASS; }
(?i:else)       { return ELSE; }
(?i:fi)         { return FI; }
(?i:if)         { return IF; }
(?i:in)         { return IN; }
(?i:inherits)   { return INHERITS; }
(?i:let)        { return LET; }
(?i:loop)       { return LOOP; }
(?i:pool)       { return POOL; }
(?i:then)       { return THEN; }
(?i:while)      { return WHILE; }
(?i:case)       { return CASE; }
(?i:esac)       { return ESAC; }
(?i:of)         { return OF; }
(?i:new)        { return NEW; }
(?i:isvoid)     { return ISVOID; }
(?i:not)        { return NOT; }
t(?i:rue)       {
    cool_yylval.boolean = true;
    return BOOL_CONST;
}
f(?i:alse)      {
    cool_yylval.boolean = false;
    return BOOL_CONST;
}

 /* 
  * Identifiers and Numbers
  */

{DIGIT}* {
    cool_yylval.symbol = inttable.add_string(yytext);
    return INT_CONST;
}

{UPPER}{CHAR}* {
    cool_yylval.symbol = idtable.add_string(yytext);
    return TYPEID;
}

{LOWER}{CHAR}* {
    cool_yylval.symbol = idtable.add_string(yytext);
    return OBJECTID;
}

 /*
  *  String constants (C syntax)
  *  Escape sequence \c is accepted for all characters c. Except for 
  *  \n \t \b \f, the result is c.
  *
  */

<INITIAL>\" { 
    BEGIN(STRING);
    string_buf_ptr = string_buf;
    memset(string_buf, 0, MAX_STR_CONST);
}
<STRING>\" { 
    BEGIN(INITIAL);
    cool_yylval.symbol = stringtable.add_string(string_buf);
    string_buf_ptr = string_buf;
    memset(string_buf, 0, MAX_STR_CONST);
    return STR_CONST;
}
<STRING>\n {
    BEGIN(INITIAL);
    curr_lineno++;
    cool_yylval.error_msg = "Unterminated string constant";
    return ERROR;
}
<STRING><<EOF>> {
    BEGIN(BROKEN_STRING);
    cool_yylval.error_msg = "EOF in string constant";
    return ERROR;
}
<STRING>\0 {
    BEGIN(BROKEN_STRING);
    cool_yylval.error_msg = "String contains null character";
    return ERROR;
}
<STRING>\\\0 {
    BEGIN(BROKEN_STRING);
    cool_yylval.error_msg = "String contains escaped null character.";
    return ERROR;
}
<BROKEN_STRING>.*(\"|\\\n|\n) { 
    BEGIN(INITIAL); 
    string_buf_ptr = string_buf;
    memset(string_buf, 0, MAX_STR_CONST);
}
<STRING>\\b { APPEND_STRBUF('\b'); }
<STRING>\\t { APPEND_STRBUF('\t'); }
<STRING>\\n { APPEND_STRBUF('\n'); }
<STRING>\\f { APPEND_STRBUF('\f'); }
<STRING>\\. { APPEND_STRBUF(yytext[1]); }
<STRING>\\\n {
    curr_lineno++;
    APPEND_STRBUF('\n');
}
<STRING>. { 
    APPEND_STRBUF(yytext[0]); 
}

 /*
  * Lines and Errors
  */

<INITIAL,COMMENT>\n { curr_lineno++; }
[ \r\t\v\f] {}
. { 
    cool_yylval.error_msg = strdup(yytext);
    return ERROR;
}
%%
