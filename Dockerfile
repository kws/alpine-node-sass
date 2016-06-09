# Based on build script found here
# https://github.com/sass/node-sass#rebuilding-binaries

FROM mhart/alpine-node:5

RUN apk --update add git build-base perl python 

RUN git clone --recursive https://github.com/sass/node-sass.git

WORKDIR node-sass
RUN git submodule update --init --recursive
RUN npm install
RUN node scripts/build -f 
