FROM node

WORKDIR /app

COPY package.json /app 

RUN npm i

# 복사한 시점의 코드의 스냅샷을 생성함. 이후에 소스코드를 수정하면 해당 변경사항은 소스코드에 포함되지 않는다. 코드를 변경할 때 마다 이미지를 다시 빌드해야함.
COPY . /app

EXPOSE 80

# 이미지가 생성될 때 실행되지 않고 이미지를 기반으로 컨테이너가 시작될 때 실행됨. 컨테이너가 실행된 후에 노드서버를 시작함.
CMD [ "node", "server.js" ]  