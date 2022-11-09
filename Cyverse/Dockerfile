FROM cyversevice/rstudio-verse:4.2.0
MAINTAINER renatof@ufl.edu 
RUN type -p curl >/dev/null || sudo apt install curl -y
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && sudo apt update && sudo apt install gh -y
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

