FROM alpine

RUN apk add --no-cache git gcc make musl-dev linux-headers

WORKDIR /src

RUN git clone https://github.com/sdi2100174/file_sync_system.git project

WORKDIR /src/project

RUN make all
