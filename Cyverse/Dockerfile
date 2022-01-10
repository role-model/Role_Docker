FROM cyversevice/rstudio-verse:4.0.0-ubuntu18.04
MAINTAINER renatof@ufl.edu 
RUN mv /etc/apt/sources.list.d/renci-irods.list . && apt-get update -y && apt-get install ca-certificates && mv renci-irods.list /etc/apt/sources.lis
t.d/ && apt-get update -y
RUN apt-get -y update 
RUN apt-get -y install wget nano curl software-properties-common sudo git-core unzip gcc libgsl-dev
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/local/anaconda 
ENV PATH="/usr/local/anaconda/bin:$PATH"
RUN conda install python=3.7
RUN mkdir -p /home/data /home/output /home/script
COPY package.R /home/script/install_packages.R
COPY run.R /home/script/install_packages2.R
WORKDIR /home/script
RUN Rscript /home/script/install_packages.R
EXPOSE 80
ENTRYPOINT ["Rscript","/home/script/install_packages2.R"]

