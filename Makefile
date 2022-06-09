all: manuscript.pdf README.md .gitignore

manuscript.pdf: manuscript.Rmd abstract.md references.bib apa.csl
	Rscript -e "rmarkdown::render('$<')"

README.md: README.Rmd abstract.md
	Rscript -e "rmarkdown::render('$<')"

publish/: manuscript.pdf
	mkdir -p $@
	cp $< $@$<

publish/PR%/: manuscript.pdf
	mkdir -p $@
	cp $< $@$<

.gitignore: .gitignore-manual
	curl -sL https://www.toptal.com/developers/gitignore/api/LaTex,R,Julia,VisualStudioCode > .gitignore
	cat .gitignore-manual >> .gitignore	

apa.csl:
	curl -sL https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl > $@

