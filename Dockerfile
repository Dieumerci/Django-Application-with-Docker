FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /codedir
WORKDIR /codedir
COPY . /codedir/

# Installing OS Dependencies
RUN apt-get update
RUN apt-get install -y python python-pip python-dev 
RUN apt-get install -y libxml2-dev libxslt-dev libffi-dev libssl-dev 
RUN apt-get install -y libmysqlclient-dev

RUN pip install -r requirements.txt

