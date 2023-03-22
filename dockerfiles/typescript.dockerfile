# Lab space for Typescript
# A set of docker containers to experiment code
# Github: https://github.com/awesomelewis2007/lab_space

FROM ubuntu:latest

COPY lab_spaces/typescript /usr/src/

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    git \
    curl \
    make \
    nano \ 
    vim

RUN npm install -g typescript

RUN npx tsc --init

WORKDIR /usr/src/