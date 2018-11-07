FROM polyaxon/polyaxon-service

MAINTAINER mourad mourafiq <mourad@polyaxon.com>

ENV POLYAXON_SERVICE=tables

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /polyaxon/polyaxon/tables/requirements.txt

WORKDIR /polyaxon/polyaxon/tables

ENTRYPOINT ["python3", "tables/__main__.py"]
