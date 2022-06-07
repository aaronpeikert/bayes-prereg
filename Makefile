all: manuscript.pdf

manuscript.pdf: manuscript.Rmd abstract.md references.bib
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
