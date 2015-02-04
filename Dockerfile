FROM ubuntu:14.04
MAINTAINER Bayu Aldi Yansyah <bayualdiyansyah@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && echo "Asia/Jakarta" | tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata &&\
    locale-gen id_ID.UTF-8 && dpkg-reconfigure locales
RUN apt-get install git -y && apt-get install make -y && apt-get install curl -y 
RUN mkdir -p x_data && cd x_data && git clone https://github.com/tj/n.git && \
    cd n && make install && n stable
