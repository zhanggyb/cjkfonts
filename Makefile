LATEX = xelatex

.PHONY: mkdir

all: mkdir pdf

mkdir:
	mkdir -p doc

pdf: guide.tex
	$(LATEX) -output-directory="doc" $<

