PROJECT := reproworkshop
WORKDIR := $(CURDIR)

all: manuscript.pdf README.md .gitignore presentation.html

manuscript.pdf: manuscript.tex

data/simulation.rds: R/simulate.R
	Rscript -e "source('$<')"

R/simulate.R: R/funs.R

publish/: manuscript.pdf presentation.html
	mkdir -p $@
	cp -r $^ $@

publish/PR%/: manuscript.pdf presentation.html
	mkdir -p $@
	cp -r $^ $@

.gitignore: .gitignore-manual
	curl -sL https://www.toptal.com/developers/gitignore/api/LaTex,R,Julia,VisualStudioCode > .gitignore
	cat .gitignore-manual >> .gitignore	

apa.csl:
	curl -sL https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl > $@

include .repro/Makefile_Rmds
