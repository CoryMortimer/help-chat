FROM node:8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ENV PATH "$PATH:/usr/src/app/node_modules/.bin/"

COPY npm-shrinkwrap.json .
RUN npm install && npm cache clean --force

COPY . /usr/src/app

CMD ["grunt"]
