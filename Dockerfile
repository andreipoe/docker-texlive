FROM ubuntu:20.04
LABEL maintainer "Andrei Poenaru <docker@simd.stream>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install \
        texlive-latex-extra \
        texlive-science \
        biber \
        latexmk && \
    rm -rf /var/lib/apt/lists/*

