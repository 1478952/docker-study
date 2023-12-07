FROM node:14

WORKDIR /app

COPY package.json .

RUN npm i

COPY . .

ARG DEFAULT_PORT=80
# docker build ~~ --build-arg DEFAULT_PORT={변수값}   

ENV PORT=$DEFAULT_PORT

# 환경변수 사용방법! ${환경변수}
EXPOSE $PORT

# 외부 폴더에 매핑되어질 컨테이너 내부의 경로 (익명 볼륨 생성)
# VOLUME [ "/app/feedback" ] 

CMD [ "npm", "start" ]
