FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=monitor_resources

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/monitor_resources/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py",  "monitor_resources"]
