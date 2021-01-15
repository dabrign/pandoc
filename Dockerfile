FROM debian:stable-slim

RUN apt update && apt install --yes pandoc pandoc-citeproc texlive-full \
       texlive-xetex \
       texlive-latex-extra \
       texlive-fonts-extra \
       texlive-bibtex-extra \
       fontconfig \
       lmodern \
       libghc-text-icu-dev \
       zip \
    && apt-get clean

# Install cabal and then pandoc + citeproc
#RUN apt update && apt install pandoc pandoc-citeproc --force-reinstalls

COPY eisvogel.latex /usr/share/pandoc/data/templates/eisvogel.latex

WORKDIR /build
