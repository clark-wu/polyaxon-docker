FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=monitor_statuses

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/monitor_statuses/requirements.txt

WORKDIR /polyaxon/polyaxon

ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
