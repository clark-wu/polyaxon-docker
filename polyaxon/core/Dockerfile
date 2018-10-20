FROM polyaxon/polyaxon-service

MAINTAINER mourad mourafiq <mourad@polyaxon.com>

RUN apt-get -y update

COPY requirements /requirements

RUN pip3 install --no-cache-dir -r /requirements/requirements-base.txt
