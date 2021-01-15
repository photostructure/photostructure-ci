#!/bin/sh -ex

docker build -t mceachen/photostructure-ci:ubuntu-20.04 ubuntu-20.04
docker push mceachen/photostructure-ci:ubuntu-20.04