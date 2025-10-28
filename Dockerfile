FROM node:20-alpine

WORKDIR /server

COPY package*.json ./
COPY start.sh ./

RUN npm install
RUN chmod +x start.sh

COPY . .

EXPOSE 9000

CMD ["sh", "./start.sh"]
