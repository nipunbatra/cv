# CV Build System
LATEX = xelatex
CV_FULL = cv.tex
CV_SHORT = cv-short.tex

.PHONY: all full short clean watch

all: full short

full: cv.pdf

short: cv-short.pdf

cv.pdf: $(CV_FULL)
	$(LATEX) $(CV_FULL)
	$(LATEX) $(CV_FULL)

cv-short.pdf: $(CV_SHORT) $(CV_FULL)
	$(LATEX) $(CV_SHORT)
	$(LATEX) $(CV_SHORT)

clean:
	rm -f *.aux *.log *.out *.synctex.gz *.fdb_latexmk *.fls *.toc

cleanall: clean
	rm -f cv.pdf cv-short.pdf

watch:
	@echo "Watching for changes to $(CV_FULL)..."
	@while true; do \
		inotifywait -e modify $(CV_FULL) 2>/dev/null && make full; \
	done

# Auto-rebuild on save (requires entr: brew install entr)
auto:
	find . -name "*.tex" | entr -r make all