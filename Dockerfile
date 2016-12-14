FROM node:6.2.1
RUN apt-get update -qq \
  && apt-get install -y -qq ocaml libelf-dev \
  && apt-get clean \
  && npm install -g yarn
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

