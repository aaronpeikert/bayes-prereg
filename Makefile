all: manuscript.pdf README.md .gitignore presentation.html

manuscript.pdf: manuscript.Rmd abstract.md references.bib apa.csl
	Rscript -e "rmarkdown::render('$<')"

README.md: README.Rmd abstract.md
	Rscript -e "rmarkdown::render('$<')"

publish/: manuscript.pdf presentation.html
	mkdir -p $@
	cp $< $@$<

publish/PR%/: manuscript.pdf presentation.html
	mkdir -p $@
	cp $< $@$<

.gitignore: .gitignore-manual
	curl -sL https://www.toptal.com/developers/gitignore/api/LaTex,R,Julia,VisualStudioCode > .gitignore
	cat .gitignore-manual >> .gitignore	

apa.csl:
	curl -sL https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl > $@

include .repro/Makefile_Rmds
