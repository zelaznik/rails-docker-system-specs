FROM ruby:3.1.1

WORKDIR '/usr/src/app'

COPY . .

RUN gem install bundler && \
	bundle install
