FROM node:8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./ /usr/src/app/

RUN npm install --save

EXPOSE 8080

CMD ["npm", "start"]
