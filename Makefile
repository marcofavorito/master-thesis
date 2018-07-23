TEX = pdflatex -synctex=1 -interaction=nonstopmode -file-line-error
BIB = bibtex

.PHONY: clean default all

default: all


all: thesis slides


thesis: 
	$(TEX) thesis.tex
	$(BIB) thesis
	$(TEX) thesis.tex
	$(TEX) thesis.tex

slides: 
	$(TEX) latex-slides.tex
	$(TEX) latex-slides.tex

clean: 
	rm *.aux *.toc *.vrb *.snm *.nlo *.log *.blg *.bbl *.nav *.out *.synctex.gz thesis.pdf latex-slides.pdf

