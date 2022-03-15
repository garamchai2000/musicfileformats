FROM ubuntu:latest

WORKDIR /music

RUN \
  apt update \
  && apt install -y ffmpeg \
  && apt clean

#to convert FLAC files to mp3 files
COPY flac2mp3.sh /flac2mp3.sh
CMD ["/flac2mp3.sh", ""]
