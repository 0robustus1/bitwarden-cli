FROM node:current-alpine

RUN apk add --no-cache --update python3 build-base

ARG BW_CLI_VERSION
RUN npm install -g "@bitwarden/cli@${BW_CLI_VERSION}"

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
