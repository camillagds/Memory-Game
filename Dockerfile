FROM node:6.0.0-onbuild

WORKDIR /usr/src/app

COPY package.json /usr/src/app/
COPY *.sh /usr/src/app/
COPY *.js /usr/src/app/
COPY app /usr/src/app/

RUN npm install

EXPOSE 8080

CMD ["npm", "start"]