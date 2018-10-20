FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mourad@polyaxon.com>

ENV POLYAXON_SERVICE=sidecar

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/sidecar/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py", "start_sidecar"]
