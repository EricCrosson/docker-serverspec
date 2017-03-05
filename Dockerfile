FROM ruby:2.4
MAINTAINER Eric Crosson <esc@ericcrosson.com>

RUN gem install serverspec docker-api
