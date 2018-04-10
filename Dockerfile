# Copyright 2016, EMC, Inc.
ARG repo=node
ARG tag=6.13.0

FROM ${repo}:${tag}

RUN npm install -g npm@5.7.1

COPY . /RackHD/on-core/

RUN cd /RackHD/on-core \
  && npm install \
  && npm prune --production \
  && npm install --production

VOLUME /opt/monorail
