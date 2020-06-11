FROM rust:alpine

WORKDIR /projects
RUN apk update && apk add bash vim git && rm -rf /var/cache/apk/*

ENV USER=root

# Adding components for development.
RUN rustup component add rustfmt rust-analysis rust-src rls

VOLUME /projects

RUN mkdir /scripts
COPY docker-entrypoint.sh /scripts
ENTRYPOINT [ "/scripts/docker-entrypoint.sh" ]