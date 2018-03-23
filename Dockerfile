# Copyright 2016, EMC, Inc.
ARG repo=nodesource
ARG tag=8.10.0

FROM ${repo}:${tag}

COPY . /RackHD/on-core/

RUN cd /RackHD/on-core \
  && npm install \
  && npm prune --production \
  && npm install --production

VOLUME /opt/monorail
