FROM debian:7.4

RUN apt-get update && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 libpng-dev libfreetype6 libfreetype6-dev libxi6 libxrandr2 \
    libxfixes3 libxcursor1 libxinerama1 libfontconfig1 libsqlite3-0 libxslt1.1 unzip bsdmainutils \
    libcurl4-openssl-dev
RUN wget --quiet https://svn.cv.nrao.edu/casa/linux_distro/release/el6/old/casa-release-4.3.1-el6.tar.gz &&\
    mkdir /usr/local/bin/CASA &&\
    mv casa-release-4.3.1-el6.tar.gz /usr/local/bin/CASA &&\
    cd /usr/local/bin/CASA &&\
    tar zxvf casa-release-4.3.1-el6.tar.gz

RUN apt-get install -qqy x11-apps xauth xvfb

ENV PATH /usr/local/bin/CASA/casa-release-4.3.1-el6:$PATH

# Need to set a user for CASA to startup right
RUN useradd -ms /bin/bash user
ENV HOME /home/user

RUN cd /home/user/

CMD export USER='user' && casa