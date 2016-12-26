FROM node:argon

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app
RUN npm install

COPY app/ /usr/src/app
COPY . /usr/src/app

EXPOSE 8080

CMD ["npm", "start"]