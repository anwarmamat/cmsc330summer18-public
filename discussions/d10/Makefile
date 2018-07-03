OCAMLBUILD = ocamlbuild
OCAMLLDFLAGS = -g
PACKS = oUnit,str

all: public.native lexer.cmo parser.cmo
	chmod +x public.native
	mv public.native public

public.native: parser.ml lexer.ml parser.mli lexer.mli public.ml
	$(OCAMLBUILD) public.native -pkgs $(PACKS)

%.cmo: %.ml
	$(OCAMLBUILD) $@ -pkgs $(PACKS)

clean:
	rm -f *.byte
	rm -f *.native
	rm -f *.cmi
	rm -f *.cmo
	rm public
	$(OCAMLBUILD) -clean
