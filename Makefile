LATEX=latex -interaction continue
BIBTEX=bibtex
LATEX_PDF=pdflatex

MAIN_FILE=zprava
PDF_FILE="./zprava"

default: clean makepdf

makepdf:	bibtex
	#make PDF file
	$(LATEX_PDF) $(MAIN_FILE).tex
	evince ${PDF_FILE}.pdf 2>/dev/null&

#make bibtex file
bibtex: $(MAIN_FILE).bib
	$(LATEX_PDF) $(MAIN_FILE).tex
	$(BIBTEX) $(MAIN_FILE)
	$(LATEX_PDF) $(MAIN_FILE).tex

all:	$(MAIN_FILE)
	$(LATEX) $(MAIN_FILE)

clean_all: clean
	rm -rf *.pdf

clean:	
	rm -rf *.ps *.log *.aux *.dvi *.nav *.out *.snm *.toc *.bbl *.blg
	 
