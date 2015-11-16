TEX=$(wildcard *.tex)
PDF=thesis.pdf
BUILD=pdflatex
GLS=makeglossaries
SRC=thesis

all: ${PDF}

${PDF}: ${TEX}
	${BUILD} ${SRC}
	${GLS} thesis
	${BUILD} ${SRC}
	${BUILD} ${SRC}

clean:
	rm -rf *.pdf *.aux *.log *.out *.glg *.glo *.gls *.ist *.lof *.lot *.toc *.xdy *.glsdefs

.PHONY: clean
