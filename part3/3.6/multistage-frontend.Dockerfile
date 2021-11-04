FROM node:14-alpine as build
WORKDIR /usr/src/app
COPY ./example-frontend .
ENV REACT_APP_BACKEND_URL=http://localhost/api/
RUN npm install && \
	npm run build

FROM node:14-alpine
COPY --from=build /usr/src/app/build /usr/src/app/build
WORKDIR /usr/src/app
ENV REACT_APP_BACKEND_URL=http://localhost/api/
RUN npm install -g serve && \
	chmod a+x . && \
	addgroup -S appgroup && adduser -S --disabled-password appuser -G appgroup && \
	chown appuser .
USER appuser
CMD ["serve", "-s", "-l", "5000", "build"]