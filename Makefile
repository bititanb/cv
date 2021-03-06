TEX_EXEC = lualatex
RESUME_BASENAME = resume-DevOps-Ilya-Lesikov
TRASH_EXTS = aux out log lyx dvi

pdf: $(RESUME_BASENAME).pdf

$(RESUME_BASENAME).pdf: $(RESUME_BASENAME).tex
	$(TEX_EXEC) -halt-on-error $(RESUME_BASENAME).tex

# for hh.ru
#png: pdf
#	pdftoppm $(RESUME_BASENAME).pdf -r 300 $(RESUME_BASENAME) -png

cleantrash:
	for ext in $(TRASH_EXTS); do \
		rm -f ./$(RESUME_BASENAME).$${ext}; \
	done; \
	rm -f *.log

clean: cleantrash
	for ext in pdf png; do \
		rm -f ./$(RESUME_BASENAME)*.$${ext}; \
	done

.PHONY: clean cleantrash pdf
