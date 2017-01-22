FROM 21dotco/two1:base
MAINTAINER Bucko


WORKDIR /usr/src/app
COPY . ./

RUN apk update && apk add build-base postgresql-dev libffi-dev
RUN pip install -r requirements.txt
