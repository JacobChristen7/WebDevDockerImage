FROM node:20

LABEL maintainer="Jacob Christensen"
LABEL description="A Docker image for my web development class assignment"
LABEL cohort="20"
LABEL animal="puppy"

WORKDIR /app

COPY app/ .

EXPOSE 8080

RUN npm install

CMD ["npm", "start"]