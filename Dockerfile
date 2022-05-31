FROM rocker/verse:4.2.0
RUN apt-get update && apt-get -y install inkscape curl git rsync
RUN tlmgr install collection-latexrecommended pgf preview
RUN install2.r --error --skipinstalled pacman tikzDevice
