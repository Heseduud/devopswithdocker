FROM golang:1.16-alpine
WORKDIR /usr/src/app
ENV REQUEST_ORIGIN=http://localhost
COPY ./example-backend .
RUN go build
CMD ["./server"]