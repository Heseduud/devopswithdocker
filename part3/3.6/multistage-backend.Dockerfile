FROM golang:1.16-alpine as build
WORKDIR /usr/src/app
COPY ./example-backend .
RUN env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-extldflags "-static"' -o server

FROM scratch
COPY --from=build /usr/src/app/server /
CMD ["/server"]