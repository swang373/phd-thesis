
TEXINPUTS := ./sty:./tex

all: main.pdf

main.pdf: main.tex
	xelatex -interaction=nonstopmode -halt-on-error main.tex
	bibtex main
	xelatex -interaction=nonstopmode -halt-on-error main.tex
	xelatex -interaction=nonstopmode -halt-on-error main.tex

clean: 
	rm -f main.pdf
	rm -f main.bib.info main.bib main.bbl main.blg
	rm -f main.log main.lot main.dvi main.aux main.out main.toc main.lof
	rm -f *~ tex/*~ tex/*.aux


