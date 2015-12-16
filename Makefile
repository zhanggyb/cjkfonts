LATEX = xelatex

.PHONY: mkdir

all: mkdir pdf

mkdir:
	mkdir -p out

pdf: guide.tex
	$(LATEX) -output-directory="out" $<

clean:
	rm -rf out
