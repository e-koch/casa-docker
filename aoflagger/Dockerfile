FROM ubuntu:trusty

RUN apt-get update && apt-get install -y software-properties-common

RUN DEBIAN_FRONTEND=noninteractive apt-add-repository multiverse && apt-get update

RUN apt-get install -y pgplot5

RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:radio-astro/main && apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libwcs4 libcasacore2

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y casacore2 casacore-data aoflagger

RUN apt-get install -qqy x11-apps xauth

CMD rfigui
