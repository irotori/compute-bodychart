FROM node:lts

WORKDIR /app

COPY package*.json ./

RUN apt-get update

RUN apt-get install -y python3

RUN apt install build-essential

RUN npm install -g node-gyp

RUN npm install -y

COPY . .

ENV PORT=3001

EXPOSE 3001

CMD ["npm", "start"]