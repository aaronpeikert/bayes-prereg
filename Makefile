PROJECT := bayesprereg
WORKDIR := $(CURDIR)

all: manuscript.pdf README.md .gitignore presentation.html

manuscript.pdf: manuscript.tex

data/simulation.rds: R/simulate.R
	$(RUN1) Rscript -e "source('$<')" $(RUN2)

R/simulate.R: R/funs.R

index.html: presentation.html
	cp $< $@

publish/: manuscript.pdf presentation.html index.html xaringan-themer.css presentation_files/ qr_slides.svg
	mkdir -p $@
	cp -r $^ $@

publish/PR%/: manuscript.pdf index.html xaringan-themer.css presentation_files/ qr_slides.svg
	mkdir -p $@
	cp -r $^ $@

.gitignore: .gitignore-manual
	curl -sL https://www.toptal.com/developers/gitignore/api/LaTex,R,Julia,VisualStudioCode > .gitignore
	cat .gitignore-manual >> .gitignore	

### Wrap Commands ###
# if a command is to be send to another process e.g. a container/scheduler use:
# $(RUN1) mycommand --myflag $(RUN2)
RUN1 = $(QRUN1) $(SRUN) $(DRUN)
RUN2 = $(QRUN2)

include .repro/Makefile_Rmds
include .repro/Makefile_Docker
