NAME = spack-bibliography

TARGETS = $(NAME).pdf

MULTIBIB_NAMES = Paper Presentation Tutorial

all: $(TARGETS)

force: all

%.pdf: %.tex bib/papers.bib bib/presentations.bib bib/tutorials.bib
	pdflatex $(NAME)
	for qname in $(MULTIBIB_NAMES); do \
		if [ -z $${qname} ]; then \
			bibtex $*; \
		else \
			bibtex $${qname}; \
		fi; \
	done
	pdflatex $(NAME)
	pdflatex $(NAME)

clean:
	rm -f $(TARGETS) *synctex.gz *mpgraph.mp
	rm -f *.aux *.toc *.log *.bbl *.blg *.out *.tmp *.tui
