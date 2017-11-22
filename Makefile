TEX = xelatex
src = ./resume-DevOps-Ilya-Lesikov.tex
result_extensions = pdf aux out log

pdf : $(src)
	$(TEX) -halt-on-error $(src)

.PHONY: clean
clean :
	for ext in $(result_extensions); do rm ./resume-DevOps-Ilya-Lesikov.$${ext}; done
