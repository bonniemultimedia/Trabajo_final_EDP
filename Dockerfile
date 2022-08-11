FROM ubuntu

MAINTAINER Bonnie

ADD [ "menu.sh", "/usr/src/" ]

ADD [ "blankLinesCounter.sh", "/usr/src/" ]

ADD [ "findNames.sh", "/usr/src/" ]

ADD [ "statsSentences.sh", "/usr/src/" ]

ADD [ "statsUseWords.sh", "/usr/src/" ]

ADD [ "statsWords.sh", "/usr/src/" ]

ADD [ "texts", "/usr/src" ]

WORKDIR /usr/src/

ENTRYPOINT [ "./menu.sh" ]


