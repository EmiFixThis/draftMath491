TEX=$(wildcard *.tex)
PDF=main
BUILD=pdflatex
GLS=makeglossaries
SRC=main

all: ${PDF}

${PDF}: ${TEX}
	${BUILD} ${SRC}
	${GLS} main
	${BUILD} ${SRC}
	${BUILD} ${SRC}
	${BUILD} ${SRC}
	${BUILD} ${SRC}
	${BUILD} ${SRC}

clean:
	rm -rf *.pdf *.aux *.log *.out *.glg *.glo *.gls *.ist *.lof *.lot *.toc *.xdy *.glsdefs

.PHONY: clean
