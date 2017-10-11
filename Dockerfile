FROM docker:17.06

WORKDIR /

COPY entrypoint.sh ./

ENTRYPOINT "./entrypoint.sh"

