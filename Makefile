NAME = Piotr-Yordanov-Resume
DEPS = sections/*.tex resume.tex

compile: $(DEPS)
	mkdir -p out
	latexmk -pdf -bibtex -jobname=out/$(NAME) -view=pdf -pvc resume.tex
clean:
	latexmk -CA
	rm -rfv out/*
