TEX_EXEC = lualatex
BASENAME = resume-DevOps-Ilya-Lesikov
TRASH_EXTS = aux out log lyx dvi

pdf:
	$(TEX_EXEC) -halt-on-error $(BASENAME).tex

# for hh.ru
png: pdf
	pdftoppm $(BASENAME).pdf -r 300 $(BASENAME) -png

clean:
	for ext in $(TRASH_EXTS); do rm -f ./resume-DevOps-Ilya-Lesikov.$${ext}; done
	rm -f *.log

cleanall: clean
	for ext in pdf png; do rm -f ./resume-DevOps-Ilya-Lesikov*.$${ext}; done

.PHONY: cleanall clean pdf png
