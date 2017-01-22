FROM 21dotco/two1:base
MAINTAINER Bucko


WORKDIR /usr/src/app
COPY . ./

RUN pip3 install -e . -U