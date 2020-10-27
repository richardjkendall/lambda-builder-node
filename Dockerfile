FROM node:14-alpine

RUN apk update
RUN apk add zip git curl

COPY run.sh /run.sh
RUN chmod +x /run.sh

RUN mkdir /output
RUN chmod 777 /output

RUN adduser --disabled-password build
USER build

ENTRYPOINT ["/run.sh"]