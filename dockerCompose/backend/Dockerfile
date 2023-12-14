FROM node

WORKDIR /app

COPY package.json .

RUN npm i

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=kjw
ENV MONGODB_PASSWORD=secret

CMD [ "npm", "start" ]