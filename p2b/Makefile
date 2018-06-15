OCAMLBUILD = ocamlbuild

SOURCES = data.mli data.ml higher.mli higher.ml testUtils.ml
PUBLIC_SOURCES = public.ml
CMO_DEPENDS = funs.cmo

PUBLIC_RESULT = public.native

OCAMLLDFLAGS = -g
PACKS = oUnit

all: $(PUBLIC_RESULT) $(CMO_DEPENDS)

$(PUBLIC_RESULT): $(SOURCES) $(PUBLIC_SOURCES)
	$(OCAMLBUILD) $(PUBLIC_RESULT) -pkgs $(PACKS)

%.cmo: %.ml
	$(OCAMLBUILD) $< $@

clean:
	rm -f *.byte
	rm -f *.native
	rm -f *.cmi
	rm -f *.cmo
	$(OCAMLBUILD) -clean
