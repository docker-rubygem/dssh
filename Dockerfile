FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.3

RUN gem install dssh --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dssh"]
CMD ["--help"]
