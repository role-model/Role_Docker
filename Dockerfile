#This is a sample Image 
FROM rocker/rstudio 
MAINTAINER harsh0280@gmail.com 
RUN apt-get -y update 
RUN apt-get -y install wget nano curl software-properties-common sudo git-core unzip gcc
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/local/anaconda 
RUN conda init bash
RUN bash
RUN conda create -n mess python=3.7 -y
RUN conda activate mess
RUN conda install -c mess -c conda-forge mess -y
RUN export R_HOME=""
RUN mkdir /home/shared
ENTRYPOINT ["MESS", "-n","test"]
