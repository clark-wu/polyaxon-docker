FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mourad@polyaxon.com>

ENV POLYAXON_SERVICE=dockerizer

RUN apt-get -y install git

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/dockerizer/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py",  "build"]
