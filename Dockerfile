# Based on build script found here
# https://github.com/sass/node-sass#rebuilding-binaries

FROM mhart/alpine-node:5

RUN apk --update add git build-base perl python

COPY build.sh build.sh

ENTRYPOINT ["/build.sh"]