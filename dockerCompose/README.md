## Docker Compose 다중 컨테이너

다중 컨테이너 설정을 더 쉽게 관리할 수 있게 해준다.
설정 프로세스를 자동화하는데 도움이 됨.
단 하나의 명령어로 각각의 컨테이너와 그들의 개별 구성을 지닌 이 전체 설정을 가져올 수 있게함.

### Docker-Compose 무엇이며 왜 사용하는가?

다수의 docker build, docker run 명령을 단 하나의 구성 파일로 가짐.

docker compose는 커스텀이미지를 위한 Dockerfile을 대체하지않음.

### Compose 파일 만들기

### Compose 파일 구성(configuration) 자세히 알아보기

### Linux에 Docker Compose 설치하기

macOS 및 Windows에서는 Docker Compose가 이미 설치되어 있을 겁니다. Docker와 함께 설정되기 때문이죠.

Linux 시스템에서는 별도로 설치해야 합니다.

설치를 위해 다음 단계를 수행하세요.

1. sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

2. sudo chmod +x /usr/local/bin/docker-compose

3. sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

4. to verify: docker-compose --version

참조: https://docs.docker.com/compose/install/

### Docker Compose Up과 Down

docker-compose up -d
이미지를 가져오고 빌드하고 컨테이너를 띄우는 작업

docker-compose down
컨테이너를 중지하고 삭제함

### 다중 컨테이너로 작업하기

context
Dockerfile의 경로가 될 수 있다. 하지만 또한 Dockerfile이 빌드되는 장소이기도 하다.
즉 이미지가 생성되는 위치. Dockerfile이 참조할 수 있는 모든것을 포함하는 폴더로 설정되어야 한다.
Dockerfile에 있다면 그곳의 일부 폴더를 이미지에 복사한다.context는 복사할 폴더를 포함하는 폴더로 설정한다.

### 또다른 컨테이너 추가하기

### 이미지 빌드 & 컨테이너 이름 이해하기

docker-compose 명령어

--build : 이미지 리빌드를 강제한다.
up 없이 build : container를 생성하지않고 이미지만 빌드한다.
