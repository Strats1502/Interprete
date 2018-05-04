import java_cup.runtime.*;
import java.io.*;
%%
%{
    public static int line = 0;
    public static int pos = 0;
%}

%cup
%full
%line
%char
%ignorecase

%eofval{
    return new Symbol(sym.EOF, new String("Fin de archivo"));
%eofval}

%%
"int"                         { return new Symbol(sym.INT, new String(yytext())); }
"boolean"                     { return new Symbol(sym.BOOL, new String(yytext())); }
"="                           { return new Symbol(sym.EQUALS, new String(yytext())); }
";"                           { return new Symbol(sym.SEMI, new String(yytext())); }
"+"                           { return new Symbol(sym.PLUS, new String(yytext())); }
"-"                           { return new Symbol(sym.MINU, new String(yytext())); }
"*"                           { return new Symbol(sym.TIMES, new String(yytext())); }
"/"                           { return new Symbol(sym.DIVIDE, new String(yytext())); }
"%"                           { return new Symbol(sym.MOD, new String(yytext())); }
"("                           { return new Symbol(sym.LPAREN, new String(yytext())); }
")"                           { return new Symbol(sym.RPAREN, new String(yytext())); }
">"                           { return new Symbol(sym.MAY, new String(yytext())); }
"<"                           { return new Symbol(sym.MEN, new String(yytext())); }
">="                          { return new Symbol(sym.MAYEQ, new String(yytext())); }
"<="                          { return new Symbol(sym.MENEQ, new String(yytext())); }
"=="                          { return new Symbol(sym.EXACT, new String(yytext())); }
"!="                          { return new Symbol(sym.DIF, new String(yytext())); }
"&&"                          { return new Symbol(sym.AND, new String(yytext())); }
"||"                          { return new Symbol(sym.OR, new String(yytext())); }
"~"                           { return new Symbol(sym.NOT, new String(yytext())); }
"true"                        { return new Symbol(sym.TRUE, new String(yytext())); }
"false"                       { return new Symbol(sym.FALSE, new String(yytext())); }
[:jletter:] [:jletterdigit:]* { return new Symbol(sym.ID, new String(yytext())); }
0 | [1-9][0-9]*               { return new Symbol(sym.NUMBER,new Integer(yytext())); }
[\t\r\n ]                     {}
.                             { System.out.println("Caracter ilegal: " + yytext()); }