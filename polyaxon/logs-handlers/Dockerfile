FROM clarkwu/polyaxon-core

MAINTAINER mourad mourafiq <mourad@polyaxon.com>

ENV POLYAXON_SERVICE=logs_handlers

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/logs_handlers/requirements.txt

WORKDIR /polyaxon/polyaxon

ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
