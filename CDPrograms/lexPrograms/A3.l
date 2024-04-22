%{
#include<stdio.h>
int length;
%}
%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%
fun(int l)
{
   if(yytext[0]=='A'){
   if(length==3){
   printf("%s is word of length 3",yytext);
   }
   else{
   printf("word is not of length 3");
  }
}
}
 
int yywrap(){}
int main()
{
   yylex();
   return 0;
}
