PROJECT := reproworkshop
WORKDIR := $(CURDIR)

all: manuscript.pdf README.md .gitignore presentation.html

manuscript.pdf: manuscript.tex

data/simulation.rds: R/simulate.R
	Rscript -e "source('$<')"

R/simulate.R: R/funs.R

index.html: presentation.html
	cp $< $@

publish/: manuscript.pdf presentation.html index.html xaringan-themer.css presentation_files/ images/
	mkdir -p $@
	cp -r $^ $@

publish/PR%/: manuscript.pdf index.html xaringan-themer.css presentation_files/ images/
	mkdir -p $@
	cp -r $^ $@

.gitignore: .gitignore-manual
	curl -sL https://www.toptal.com/developers/gitignore/api/LaTex,R,Julia,VisualStudioCode > .gitignore
	cat .gitignore-manual >> .gitignore	

apa.csl:
	curl -sL https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl > $@

include .repro/Makefile_Rmds
