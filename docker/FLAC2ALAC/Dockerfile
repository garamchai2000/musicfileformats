FROM ubuntu:latest

WORKDIR /music

RUN \
  apt update \
  && apt install -y ffmpeg \
  && apt clean

#to convert FLAC files to ALAC files
COPY flac2alac.sh /flac2alac.sh
CMD ["/flac2alac.sh", ""]
