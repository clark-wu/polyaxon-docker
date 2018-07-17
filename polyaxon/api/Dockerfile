FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=api

RUN apt-get -y install git && \
    apt-get -y install nginx && \
    apt-get -y install libldap2-dev libsasl2-dev

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/api/requirements.txt

RUN rm -f /etc/nginx/sites-enabled/default
RUN rm -f /etc/nginx/sites-available/default
# We need to COPY from within docker
RUN cp /polyaxon/web/nginx.conf /etc/nginx/sites-available/polyaxon.config
RUN ln -s /etc/nginx/sites-available/polyaxon.config /etc/nginx/sites-enabled/polyaxon.conf
RUN cp /polyaxon/web/uwsgi_params /etc/nginx/uwsgi_params

ENTRYPOINT ["/bin/bash", "./polyaxon/entrypoint.sh"]
