FROM ruby:2.4
MAINTAINER Eric Crosson <esc@ericcrosson.com>

RUN mkdir -p /code

COPY Gemfile /code/Gemfile

RUN gem install bundle && \
cd /code && \
bundle install
