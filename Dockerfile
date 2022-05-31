FROM rocker/verse:4.2.0
RUN install2.r --error --skipinstalled pacman tikzDevice
RUN tlmgr install collection-latexrecommended pgf preview
