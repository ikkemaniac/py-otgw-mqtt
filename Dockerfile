FROM python:3.8-alpine

MAINTAINER Cornelis Hoeflake <c.hoeflake@gmail.com>

ENV DIR=/py-otgw-mqtt

RUN set -e && \
    pip install --no-cache-dir paho-mqtt && \
    mkdir $DIR && \
    cd $DIR

COPY . $DIR

CMD cd $DIR && python .
    
    