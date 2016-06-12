all: memoria.pdf

memoria.pdf: memoria.tex
	pdflatex --shell-escape memoria.tex; bibtex memoria; pdflatex --shell-escape memoria.tex; pdflatex --shell-escape memoria.tex

clean:
	rm -f memoria.dvi memoria.ps *.snm *.out *.nav *.log *.aux *.toc *.vrb *.pdf *~ *.lof *.blg *.bbl
