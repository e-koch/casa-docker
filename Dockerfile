FROM debian:7.4

RUN apt-get update && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1
RUN wget --quiet https://svn.cv.nrao.edu/casa/linux_distro/release/el6/old/casa-release-4.3.1-el6.tar.gz &&\
    mkdir /usr/local/bin/CASA &&\
    mv casa-release-4.3.1-el6.tar.gz /usr/local/bin/CASA &&\
    cd /usr/local/bin/CASA &&\
    tar zxvf casa-release-4.3.1-el6.tar.gz

ENV PATH /usr/local/bin/CASA/casa-release-4.3.1-el6:$PATH

CMD casa