%option noyywrap
%{
int chars = 0;
int words = 0;
int lines = 1;

int tot_chars = 0; 
int tot_words = 0; 
int tot_lines = 0;

int single_comm = 0;
int multi_comm = 0;

int tot_single_comm = 0;
int tot_multi_comm = 0;


int num_for = 0;
int num_while = 0;
int num_do = 0;


int tot_for = 0;
int tot_while = 0;
int tot_do = 0;

%}

%%



for                   {  ++words; chars += yyleng; ++num_for; fprintf(yyout,"%s",yytext);}
do                    {  ++words; chars += yyleng; ++num_do; fprintf(yyout,"%s",yytext);}
while                 {  ++words; chars += yyleng; ++num_while; fprintf(yyout,"%s",yytext);}

[a-zA-Z0-9]+            { ++words; chars += yyleng; fprintf(yyout,"%s",yytext);}
\n                      { ++lines; fprintf(yyout,"%s",yytext);}

[" "]+                  { fprintf(yyout, " "); }

\/\/                    { ++single_comm; fprintf(yyout,"%s",yytext);}
\/\*                    { ++multi_comm; fprintf(yyout,"%s",yytext);}

.                       { ++chars; ++words; fprintf(yyout,"%s",yytext); }

%%

int main(argc, argv) int argc;
char **argv;
{
        int i;
        if(argc < 2) {
		yylex();
		printf("\nLines: %8d Words: %8d Chars: %8d for: %8d while: %8d do: %8d single_comm: %8d multi_comm: %8d\n", lines, words, chars, num_for, num_while, num_do, single_comm, multi_comm);
		return 0; 
	}
	for(i = 1; i < argc; i++) {
		FILE *f = fopen(argv[i], "r");

		if(!f) { 
			perror(argv[i]);
			return (1); 
		}
		yyrestart(f);
		yylex();
		fclose(f);
		printf("\nLines: %8d Words: %8d Chars: %8d for: %8d while: %8d do: %8d single_comm: %8d multi_comm: %8d %s\n", lines, words, chars, num_for, num_while, num_do, single_comm, multi_comm, argv[i]);

		tot_chars += chars; chars = 0;
		tot_words += words; words = 0;
		tot_lines += lines; lines = 0;

                tot_do += num_do; num_do = 0;
                tot_while += num_while; num_while = 0;
                tot_for += num_for; num_for = 0;

                tot_multi_comm += multi_comm; multi_comm = 0;
                tot_single_comm += single_comm; single_comm = 0;


	}

	if(argc > 1)
	printf("\nTotal \nLines: %8d Words: %8d Chars: %8d for: %8d while: %8d do: %8d\n", tot_lines, tot_words, tot_chars, tot_for, tot_while, tot_do);
	return 0; 
}