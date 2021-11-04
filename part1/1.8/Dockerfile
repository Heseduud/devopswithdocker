FROM ubuntu:16.04
WORKDIR /usr/src/app
COPY curl.sh .
RUN apt-get update && apt-get -y install curl
CMD ./curl.sh