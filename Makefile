TEX_EXEC = lualatex
RESUME_BASENAME = resume-DevOps-Ilya-Lesikov
CL_BASENAME = cover-letter-DevOps-Ilya-Lesikov
TRASH_EXTS = aux out log lyx dvi

pdf: $(RESUME_BASENAME).tex $(CL_BASENAME).tex

$(RESUME_BASENAME).tex:
	$(TEX_EXEC) -halt-on-error $(RESUME_BASENAME).tex

$(CL_BASENAME).tex:
	$(TEX_EXEC) -halt-on-error $(CL_BASENAME).tex

# for hh.ru
#png: pdf
#	pdftoppm $(RESUME_BASENAME).pdf -r 300 $(RESUME_BASENAME) -png

clean:
	for ext in $(TRASH_EXTS); do \
		rm -f ./$(RESUME_BASENAME).$${ext} ./$(CL_BASENAME).$${ext}; \
	done; \
	rm -f *.log

cleanall: clean
	for ext in pdf png; do \
		rm -f ./$(RESUME_BASENAME)*.$${ext} ./$(CL_BASENAME)*.$${ext}; \
	done

.PHONY: cleanall clean pdf
