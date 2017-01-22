FROM 21dotco/two1:base
MAINTAINER Bucko

EXPOSE 8000
WORKDIR /usr/src/app
COPY . ./

RUN apk update && apk add build-base postgresql-dev libffi-dev
RUN pip3 install -r requirements.txt
RUN python manage.py migrate
