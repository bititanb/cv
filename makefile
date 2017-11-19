TEX = pandoc
src = template.tex details.yml
FLAGS = --pdf-engine=xelatex

pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o output.pdf --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
