FROM alpine:latest
RUN apk add npm

RUN    npm i -g \
	bash-language-server \
    dockerfile-language-server-nodejs \
    intelephense

RUN apk add shellcheck zsh
COPY ./scripts/zshwrapper /bin/zshwrapper
