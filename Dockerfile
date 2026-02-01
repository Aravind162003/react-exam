FROM node:18-alpine

WORKDIR /react_exam

COPY package*.json ./

RUN npm install

EXPOSE 3000

COPY . .

CMD ["npm","start"]

