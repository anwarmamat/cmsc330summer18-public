OCAMLBUILD = ocamlbuild
OCAMLLDFLAGS = -g
PACKS = oUnit

all: public.native repl.native
	chmod +x public.native
	mv public.native public
	chmod +x repl.native
	mv repl.native repl

public.native: compiler.ml compiler.mli public.ml
	$(OCAMLBUILD) public.native -pkgs $(PACKS)
	
repl.native: parser.ml lexer.ml parser.mli repl.ml compiler.ml compiler.mli
	$(OCAMLBUILD) repl.native -pkgs $(PACKS)

clean:
	rm -f *.byte
	rm -f *.native
	rm -f *.cmi
	rm -f *.cmo
	rm -f public
	rm -f repl
	$(OCAMLBUILD) -clean
