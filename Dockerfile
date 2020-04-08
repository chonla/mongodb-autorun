FROM mongo:bionic
LABEL maintainer="chonlasith@gmail.com"

ADD . /data/autorun

WORKDIR /data/autorun

CMD [ "./run.sh" ]