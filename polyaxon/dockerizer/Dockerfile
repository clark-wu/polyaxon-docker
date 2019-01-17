FROM clarkwu/polyaxon-core

MAINTAINER mourad mourafiq <mourad@polyaxon.com>

ENV POLYAXON_SERVICE=dockerizer

RUN apt-get -y install git

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/dockerizer/requirements.txt
RUN echo { "insecure-registries":["192.168.1.50:31813"] }  > /etc/docker/daemon.json

ENTRYPOINT ["python3", "polyaxon/manage.py",  "build"]
