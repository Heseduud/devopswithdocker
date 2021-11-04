FROM docker:git
WORKDIR /usr/src/app
ENV DOCKER_USER=
ENV DOCKER_PASSWORD=
ENV REPO=https://github.com/Heseduud/devops-heroku-test.git
ENV IMAGE_NAME=build-in-container-test
COPY build.sh ./
RUN chmod +x build.sh
CMD ./build.sh