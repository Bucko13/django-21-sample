FROM 21dotco/two1:base
MAINTAINER Bucko


WORKDIR /usr/src/app
COPY . ./

RUN pip install -r requirements.txt