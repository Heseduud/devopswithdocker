FROM golang:1.16-alpine
WORKDIR /usr/src/app
COPY ./example-backend .
RUN go build
CMD ["./server"]