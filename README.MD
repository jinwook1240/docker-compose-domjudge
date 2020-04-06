# Docker Compose Domjudge

## Pre-install
[docker 공식 사이트의 docker-compose install 문서](https://docs.docker.com/compose/install/)를 참고하여 최신 버전을 설치(v3.x 버전의 yml 형식을 사용해야 함)  

## Install and run
```bash
git clone https://github.com/orehonyah/docker-compose-domjudge
cd docker-compose-domjudge
docker-compose up
```
웹 상에서 admin 로그인 후 judgehost 유저의 비밀번호를 `examplejudgehostpasswd`로 설정  

## Run judgedaemon only
```
docker-compose -f docker-compose_judgehost_only.yml up
```
파일 내의 judgedaemon-{숫자}: 블록 갯수를 조절하여 저지호스트 갯수를 바꿀 수 있음  
DOMSERVER_BASEURL을 변경하여 목적 주소를 변경할 수 있음.
