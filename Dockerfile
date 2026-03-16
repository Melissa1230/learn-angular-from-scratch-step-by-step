FROM node:14

WORKDIR /usr/src/lafs

COPY package*.json ./

RUN npm install -g @angular/cli@7.3.8
RUN npm install

COPY . .

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0", "--disable-host-check"]