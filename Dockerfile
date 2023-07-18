FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add rsync && \
    apk add tree

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
