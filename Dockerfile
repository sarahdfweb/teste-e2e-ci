
FROM jenkins/jenkins:latest
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install nodejs -y
RUN npm install -g cypress
CMD ["npm", "test"]
