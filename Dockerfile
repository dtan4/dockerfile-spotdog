FROM ruby:2.2.3-slim
MAINTAINER Daisuke Fujita <dtanshi45@gmail.com> (@dtan4)

WORKDIR /app
COPY Gemfile /app/
COPY Gemfile.lock /app/

RUN bundle install -j4 --without test development --system

ENTRYPOINT ["spotdog"]
