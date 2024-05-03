FROM ruby:2.7-alpine

WORKDIR /app

ADD Gemfile Gemfile.lock /app/
RUN bundle install -j 8
EXPOSE 8084
ADD . /app
