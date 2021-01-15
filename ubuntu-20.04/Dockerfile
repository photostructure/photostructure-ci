FROM ubuntu:20.04

# NOTE: This docker image is only used for PhotoStructure's internal continuous
# integration tests: if you're wanting to install PhotoStructure using Docker,
# see <https://photostructure.com/docker>.

# TZ shenanigans prevent tzinfo setup prompts.

# DEBIAN_FRONTEND=noninteractive prevents keyboard setup prompts.

# `yarn lint` requires shellcheck.

# src and library tests require _both_ VLC and FFmpeg to be installed.

ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone ;\
  apt-get update ;\
  apt-get install -y curl ;\
  curl -sL https://deb.nodesource.com/setup_14.x | bash - ;\
  apt-get update ;\
  DEBIAN_FRONTEND=noninteractive apt-get install -y\
  build-essential \
  ffmpeg \
  git \
  git-lfs \ 
  libheif-examples \
  libjpeg-turbo-progs \
  libraw-bin \
  nodejs \
  perl \
  shellcheck \
  sqlite3 \
  vlc ;\
  npm i -g npm yarn npm-run-all


