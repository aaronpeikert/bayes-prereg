
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Why does preregistration increase the persuasiveness of evidence? A Bayesian rationalization.

## [🗎 Manuscript draft 🗎](https://aaronpeikert.github.io/bayes-prereg/manuscript.pdf) / [Talk slides](https://aaronpeikert.github.io/bayes-prereg/presentation.html)

The replication crisis has led many researchers to preregister their
hypotheses and data analysis plans before collecting data. A widely held
view is that preregistration is supposed to limit the extent to which
data may influence the hypotheses to be tested. Only if data have no
influence an analysis is considered confirmatory. Consequently, many
researchers believe that preregistration is only applicable in
confirmatory paradigms. In practice, researchers may struggle to
preregister their hypotheses because of vague theories that necessitate
data-dependent decisions (aka exploration). We argue that
preregistration benefits any study on the continuum between confirmatory
and exploratory research. To that end, we formalize a general objective
of preregistration and demonstrate that exploratory studies also benefit
from preregistration. Drawing on Bayesian philosophy of science, we
argue that preregistration should primarily aim to reduce uncertainty
about the inferential procedure used to derive results. This approach
provides a principled justification of preregistration, separating the
procedure from the goal of ensuring strictly confirmatory research. We
acknowledge that knowing the extent to which a study is exploratory is
central, but certainty about the inferential procedure is a prerequisite
for persuasive evidence. Finally, we discuss the implications of these
insights for the practice of preregistration.

## How to reproduce?

### GitHub Actions

Reproduction is done automatically on GitHub: [![Render and deploy
PDF](https://github.com/aaronpeikert/bayes-prereg/actions/workflows/render-n-deploy-pdf.yml/badge.svg)](https://github.com/aaronpeikert/bayes-prereg/actions/workflows/render-n-deploy-pdf.yml),
so forking the repo and pushing changes should be sufficient for you to
reproduce.

### Using Docker

#### Prebuild Image

This workflow requires Docker, Git, and Make installed:

1.  Get docker image, and give it a local tag:

<!-- -->

    docker pull ghcr.io/aaronpeikert/bayes-prereg:main
    docker tag ghcr.io/aaronpeikert/bayes-prereg:main bayesprereg:latest

2.  Reproduce:

<!-- -->

    git clone https://github.com/aaronpeikert/bayes-prereg.git
    cd bayes-prereg
    make DOCKER=TRUE

#### Self build Image

1.  Build the image locally:

<!-- -->

    make docker

2.  Reproduce:

<!-- -->

    make DOCKER=TRUE

#### Without Make/Git

Since Make and Git are installed in the image, the docker container is
technically all you need. However, retrieving the end result requires
you to [bind a volume to the container (modify first
comand).](https://docs.docker.com/storage/volumes/)

    docker run ghcr.io/aaronpeikert/bayes-prereg:main bash
    git clone https://github.com/aaronpeikert/bayes-prereg.git
    cd bayes-prereg
    make

An alternative with graphical user interface is:

1.  Get docker image:

<!-- -->

    docker run ghcr.io/aaronpeikert/bayes-prereg:main

2.  Use the url and password that is shown to you in the terminal to
    open RStudio in your web browser.
3.  Create a new project, click on “version control”, click on “git”,
    paste url: `https://github.com/aaronpeikert/bayes-prereg.git`
4.  Reproduce by running `make` in the RStudio terminal (not console!).

### Locally

#### With Git and Make

Make sure you have all installed software you need.

    git clone https://github.com/aaronpeikert/bayes-prereg.git
    cd bayes-prereg
    make

#### Per pedes

1.  Open RStudio
2.  Create a new project, click on “version control”, click on “git”,
    paste url: `https://github.com/aaronpeikert/bayes-prereg.git`
3.  Open `manuscript.Rmd`.
4.  Install all the packages listed under `packages` in the yaml
    metadata.
5.  Open `R/simulation.R` and run it.
6.  Open `manuscript.Rmd` and click on knit.
