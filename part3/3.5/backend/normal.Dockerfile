FROM golang:1.16
WORKDIR /usr/src/app
ENV REQUEST_ORIGIN=http://localhost
COPY ./example-backend .
RUN go build
RUN chmod a+x .
CMD ["./server"]