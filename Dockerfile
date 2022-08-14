FROM ubuntu

MAINTAINER Bonnie

WORKDIR /usr/src/

COPY . .

RUN apt-get update && apt-get install bc -y

ENTRYPOINT [ "./menu.sh" ]


