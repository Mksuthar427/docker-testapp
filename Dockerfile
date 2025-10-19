FROM node

ENV MONGO_DB_USERNAME=admin \
    MONDO_DB_PWD=qwerty

RUN mkdir -p /docker-testapp
WORKDIR /docker-testapp

COPY . /docker-testapp
RUN npm install

CMD ["node", "/docker-testapp/server.js"]
