FROM polyaxon/polyaxon-service

MAINTAINER mourad mourafiq <mourad@polyaxon.com>

ENV POLYAXON_SERVICE=sidecar

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /polyaxon/polyaxon/sidecar/requirements/requirements.txt

WORKDIR /polyaxon/polyaxon/sidecar

ENTRYPOINT ["python3", "sidecar/__main__.py"]
