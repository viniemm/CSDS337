build: compile run 

compile:
	flex problem4lex.l
	gcc lex.yy.c
	
run:
	@for i in `(cd input; ls *.t | sed -e 's/.t$$//')`;\
		$(addsuffix ,foo bar)
		do echo $$i.t;\
		./a.out <input/$$i.t >output/$$i.i;\
	done

clean:
	cd output; rm *.i
	rm a.out
	rm lex.yy.c