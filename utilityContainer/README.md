## 유틸리티 컨테이너로 작업하기 & 컨테이너에서 명령 실행하기

공식적인 용어가 아님~

항상 애플리케이션 컨테이너로 작업하였음. 애플리케이션 코드와 실행하는 환경이 포함되어 있음. 전형적인 도커구조

유틸리티 컨테이너 -> 특정환경만 포함하는 컨테이너 (Nodejs, php환경)
애플리케이션을 시작하지않는다. 대신 특정작업을 실행하기 위해 지정한 명령과 함께 실행한다.

### 유틸리티 컨테이너란 무엇인가?

### 유틸리티 컨테이너 왜 사용하는가?

### 컨테이너에서 명령을 실행하는 다양한 방법

docker exec -it
컨테이너가 실행하는 기본 명령 외에 실행 중인 컨테이너 내에서 특정명령 실행가능

### 첫 번째 유틸리티 컨테이너 구축

Dockerfile에 node 설치만 작성 후 호스트머신과 파일을 공유한다. node환경설치가 필요없이 프로젝트 구현가능

FROM node:14-alpine

WORKDIR /app

컨테이너 생성
docker run -it -v {경로}:/app node-util npm init

nodejs의 경우에는 큰 용도가 없을수 있으나 php의 laravel의 경우에는 환경구성이 복잡하기 때문에 이런 방식이 도움이 된다.

### ENTRYPOINT 활용

### Dcoker Compose 사용

### 유틸리티 컨테이너, 권한 & Linux