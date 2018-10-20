FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mourad@polyaxon.com>

ENV POLYAXON_SERVICE=crons

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/crons/requirements.txt

WORKDIR /polyaxon/polyaxon

ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
