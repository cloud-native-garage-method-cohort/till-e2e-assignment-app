FROM quay.io/ibmgaragecloud/node:lts-stretch

WORKDIR /usr/src/app

COPY package*.json .

RUN npm run build

COPY . .

EXPOSE 3000

CMD ["npm", "start"]