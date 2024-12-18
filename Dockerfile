FROM node:10.14.2

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install --production

COPY . .

EXPOSE 3001

ENV NODE_ENV production

CMD ["npm", "start"]