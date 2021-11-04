FROM node:14-alpine
WORKDIR /usr/src/app
COPY ./example-frontend .
ENV REACT_APP_BACKEND_URL=http://localhost/api/
RUN npm install
RUN	npm run build
RUN	npm install -g serve
RUN chmod a+x .
#some alpine magic
RUN addgroup -S appgroup && adduser -S --disabled-password appuser -G appgroup
RUN chown appuser .
USER appuser
CMD ["serve", "-s", "-l", "5000", "build"]
