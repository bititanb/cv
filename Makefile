TEX = xelatex
src = ./resume-DevOps-Ilya-Lesikov.tex

pdf : $(src)
	$(TEX) $(src)

.PHONY: clean
clean :
	rm ./resume-DevOps-Ilya-Lesikov.pdf
