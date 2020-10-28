FROM node:10.23-alpine

# bash, sh, zsh
RUN apk add shellcheck zsh && \
    npm i -g bash-language-server
COPY ./scripts/zshwrapper /bin/zshwrapper

# Dockerfile
RUN npm i -g dockerfile-language-server-nodejs

# PHP
RUN npm i -g intelephense
