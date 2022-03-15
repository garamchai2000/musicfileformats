#!/usr/bin/bash

FLAC_MUSIC_FOLDER=/music/FLAC
cd $FLAC_MUSIC_FOLDER
# convert FLAC files in each album folder
for album in *
do
  if [ -d "$album" ]; then
    cd "$FLAC_MUSIC_FOLDER/$album"
    for song in *.flac; do /usr/bin/ffmpeg -i "$song" -ab 320k "${song%.flac}.mp3"; done
    rm -f ./*.flac
    cd $FLAC_MUSIC_FOLDER
  else
#### convert any FLAC files placed outside album folders
    song=$album
      if [ "${song: -5}" == ".flac" ]; then
        /usr/bin/ffmpeg -i "$song" -ab 320k "${song%.flac}.mp3"
        rm -f "$song"
      fi
  fi
done
cd /music
mv FLAC mp3
