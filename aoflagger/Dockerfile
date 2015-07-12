
# On OSX, X11 forwarding needs to have:
#   socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
# running before running the docker image:
#   docker run -it -e DISPLAY=192.168.59.3:0 -v /Users/eric/:/home/ aoflagger
# The -v argument mounts your home directory into the container.
# By default, this will run `rfigui` upon starting. Change CMD to alter this.
# Solutions from https://github.com/docker/docker/issues/8710#issuecomment-71113263

FROM ubuntu:trusty

RUN apt-get update && apt-get install -y software-properties-common

RUN DEBIAN_FRONTEND=noninteractive apt-add-repository multiverse && apt-get update

RUN apt-get install -y pgplot5

RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:radio-astro/main && apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libwcs4 libcasacore2

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y casacore2 casacore-data aoflagger

RUN apt-get install -qqy x11-apps xauth

CMD rfigui
