FROM ruby:2.4
MAINTAINER Eric Crosson <esc@ericcrosson.com>

RUN mkdir -p /code

RUN gem install serverspec docker-api
