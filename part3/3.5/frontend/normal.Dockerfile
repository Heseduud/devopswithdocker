FROM node:14
WORKDIR /usr/src/app
COPY ./example-frontend .
ENV REACT_APP_BACKEND_URL=http://localhost/api/
RUN npm install
RUN	npm run build
RUN	npm install -g serve
CMD ["serve", "-s", "-l", "5000", "build"]