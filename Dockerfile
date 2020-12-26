FROM python:3.8-alpine

LABEL 'maintiner'='Cornelis Hoeflake <c.hoeflake@gmail.com>'
LABEL 'python.version'='3.8'
LABEL 'docker.image'='3.8-alpine'
LABEL 'py-otgw-mqtt.url'='https://github.com/choeflake/py-otgw-mqtt/'
LABEL 'py-otgw-mqtt.branch'='dev'

ENV DIR=/py-otgw-mqtt

RUN set -e && \
    pip install --no-cache-dir paho-mqtt && \
    mkdir $DIR && \
    cd $DIR

COPY . $DIR

WORKDIR $DIR

CMD python .
    
    