## docker 컨테이너 배포하기

### 개발에서 배포까지

컨테이너는 도커가 실행되는 모든 곳에 제공할 수 있는 앱 코드와 앱 환경으로 가득 찬 독립적인 격리된 패키지이다.
컨테이너가 앱을 배송(?) 할 때 직면할 수 있는 문제를 해결하는데 도움이 된다.
컨테이너 없이는 천차만별의 개발 및 배포환경을 구축할 수 밖에 없다. 즉 리모트 호스트 서버에 앱을 배포하면
로컬에서 잘 작동되던 코드가 갑자기 작동하지 않게 된다.

컨테이너 배포와 관련해 알아야 할 것.

- 개발 중 바인드마운트를 많이 사용하지만 배포에는 실제로 사용하지 말아야 한다.
- 컨테이너화된 앱의 개발 및 최종 제품 생산을 위해 다른 설정이 필요하다.
  - 빌드단계
- Docker compose를 사용하여 하나의 호스트머신에서 사용할 수 있지만 다중 호스트머신으로 분할하는것을 고려할 수 있다.
- 배포플랫폼을 덜 통제(?)하는 더 쉬운 솔루션을 찾을 수 있다. remote host

EC2 인스턴스 생성 후 시작 VPC 가상 공개 클라우드와 보안그룹을 생성

- 인스턴스에 엑세스 하려는 이릉 통제하기
  필요한 모든 포트를 www에 노출하도록 보안그룹 구성
- 해당 ec2 인스턴스로 들어오는 트래픽을 가질 수 있도록
  ssh를 통해 인스턴스에 연결
- remote 머신에 연결하기 위한 특정한 접근 방식이다. (터미널 기반 접근 방식)

### 배포 프로세스 & 프로바이더

### 프로덕션에서 바인드마운트

개발모드와 프로덕션 모드의 컨테이너 실행방법에는 차이가 있다.

개발 중에는 컨테이너는 물론 런타임 환경을 캡슐화해야 하나 코드를 캡슐화할 필요는 없다.
즉 컨테이너에 앱을 실행하는데 필요한 모든 도구가 있는지 보장한다.

배포환경에서는 컨테이너는 스탠드얼론으로 작동하며 리모트 머신의 주변설정에 의존하지 않는다.
이미지와 이미지를 기반으로 하는 컨테이너는 단 하나의 소스여야 한다.
즉 이미지를 가져와서 이를 기반으로 컨테이너를 실행하면 앱에 필요한 모든것을 얻을 수 있다.
소스코드를 리모트머신의 특정폴더로 이동시킬 필요가없다. 호스팅 머신을 다시 구성해야한다면
컨테이너 배경사상을 완전히 파괴하는 것. 바인딩마운트 대신 copy를 사용

### AWS & EC2 소개

### EC2 인스턴스에 연결하기

### 가상머신에 Docker 설치하기

sudo yum update -y
sudo yum install docker

sudo service docker start

sudo usermod -a -G docker ec2-user

다음 명령을 실행한 후에는 반드시 로그아웃했다가 다시 로그인하세요.

다시 로그인한 후 이 명령을 실행합니다:

sudo systemctl enable docker
따라서, 아래를 실행함으로써 Docker가 사용가능한지 확인할 수 있습니다:

docker version

### Linux에 Docker 일반적인 설치하기

### 로컬 이미지를 클라우드로 푸시 하기

image build -> docker hub push -> ec2 image deploy

### 앱 실행 & 게시하기 (EC2)

인바운드

- 클라이언트가 자신의 서버 데이터에 들어올 수 있는 규칙
  아웃바운드
- 다른 곳ㅔ 있는 인스턴스 대기열로 부터 허용되는 트픽을 제어함

### 컨테이너/이미지 관리 & 업데이트

### 현재 접근 방식의 단점

### 수동 배포에서 관리형 서비스로

### AWS 요금과 ECS

### AWS ECS를 사용한 배포: 관리형 Docker 컨테이너 서비스

### AWS에 대한 추가 정보

### 관리되는 컨테이너를 업데이트하기

### 다중 컨테이너 앱 준비하기

### NodeJS 백엔드 컨테이너 구성하기

### 두 번째 컨테이너 & 로드 밸런서 배포하기

### 안정적인 도메인을 위해 로드 밸런서 사용하기

### ECS로 EFS 볼륨 사용하기

### 현재 아키텍처

### 데이터베이스 & 컨테이너 :중요한 고려 사항

### MongoDB Atlas로 이동하기

### 프로덕션에서 MongoDB Atlas 사용하기

### 업데이트 & Target 아키텍쳐

### 일반적인 문제 이해하기

### "빌드 저용" 컨테이너 만들기

### 멀티 스테이지 빌드 소개

### 멀티 스테이지 이미지 구축

### 스탠드얼론 프론트엔드 앱 배포하기

### Development vs Production 차이점

### 멀티 스테이지 빌드 Target 이해하기

### AWS를 넘어서

### 모듈 요약