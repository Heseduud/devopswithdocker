FROM golang:1.16-alpine
WORKDIR /usr/src/app
ENV REQUEST_ORIGIN=http://localhost
COPY ./example-backend .
RUN go build
RUN chmod a+x .
#some alpine magic
RUN addgroup -S appgroup && adduser -S --disabled-password appuser -G appgroup
RUN chown appuser .
USER appuser
CMD ["./server"]