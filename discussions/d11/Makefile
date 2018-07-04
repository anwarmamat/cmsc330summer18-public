OCAMLBUILD = ocamlbuild
OCAMLLDFLAGS = -g
PACKS = oUnit,str

all: public.native repl.native lexer.cmo parser.cmo evaler.cmo
	chmod +x public.native
	mv public.native public
	chmod +x repl.native
	mv repl.native repl

public.native: evaler.ml evaler.mli public.ml
	$(OCAMLBUILD) public.native -pkgs $(PACKS)

repl.native: parser.ml lexer.ml parser.mli lexer.mli evaler.ml evaler.mli repl.ml
	$(OCAMLBUILD) repl.native -pkgs $(PACKS)

%.cmo: %.ml
	$(OCAMLBUILD) $@ -pkgs $(PACKS)

clean:
	rm -f *.byte
	rm -f *.native
	rm -f *.cmi
	rm -f *.cmo
	rm -f public
	$(OCAMLBUILD) -clean
