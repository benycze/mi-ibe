LATEX=latex -interaction errorstopmode
LATEX_PDF=pdflatex

MAIN_FILE="./zprava.tex"
PDF_FILE="./zprava.pdf"

default: makepdf

makepdf:  
	$(LATEX_PDF) $(MAIN_FILE)
	evince ${PDF_FILE}&

all:	$(MAIN_FILE)
	$(LATEX) $(MAIN_FILE)

clean_all:	
	rm -rf *.pdf *.ps *.log *.aux *.dvi *.nav *.out *.snm *.toc

clean:	
	rm -rf *.ps *.log *.aux *.dvi *.nav *.out *.snm *.toc
	 
