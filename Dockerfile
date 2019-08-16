FROM openjdk:8

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y sudo curl gdebi
# download tabcmd
RUN curl -L -O https://downloads.tableau.com/esdalt/2019.2.1/tableau-tabcmd-2019-2-1_all.deb
# extract deb
RUN gdebi -n tableau-tabcmd-2019-2-1_all.deb
