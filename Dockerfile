
FROM ruby:2.4

RUN apt-get update -qq && apt-get install -qq -y curl apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update -qq

RUN apt-get install -qq -y build-essential libpq-dev yarn nodejs imagemagick

RUN mkdir -p /enemgo

WORKDIR /enemgo

COPY Gemfile /enemgo/Gemfile
COPY Gemfile.lock /enemgo/Gemfile.lock

RUN yarn install

ENV BUNDLE_PATH=/enemgo_gems

COPY . /enemgo
