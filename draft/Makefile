all:
	pdflatex draft.tex
	pdflatex draft.tex
	bibtex draft
	pdflatex draft.tex
	pdflatex draft.tex

partial:
	pdflatex draft.tex

targetted:
	pdflatex $(TARGETTED)
	pdflatex $(TARGETTED)

clean:
	rm -f *.toc *.ps *.log *.lof *.lot *.dvi *.aux *.blg *.bbl *.synctex.gz *.fls *.fdb_latexmk
