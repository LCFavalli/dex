FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN mkdir -p /adapt-lab
RUN apt-get update && apt-get install -y texlive-full
RUN apt-get update && apt-get install -y python3-pygments make texlive-latex-extra python3-pip
RUN pip3 install setuptools
RUN perl -e'use CPAN; install "Spreadsheet::ParseExcel"' 
COPY trunk/ /adapt-lab
RUN cd /adapt-lab/showcode/pygmentize/; python3 setup.py develop
WORKDIR /data
