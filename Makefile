.PHONY: all clean
all: getraenkeliste.pdf

getraenkeliste.pdf: getraenkeliste.tex
	latexmk -lualatex $<

clean:
	latexmk -C getraenkeliste.tex
	$(RM) getraenkeliste.pdf

