# Docker Compose Domjudge
도커 컴포즈를 이용하여 돔저지 자동화하기
## How to run
1. `docker-compose up` -> mariadb, domserver, judgehost가 켜진다.
2. http://돔저지주소:12345 에 접속하여 users 탭에서 judgehost 유저의 비밀번호를 `dGlKouosIJJENVMz`로 변경한다.
3. judgehost가 정상적으로 등록됨을 콘솔로 확인한다.

## Todo
- judgehost의 docker-compose 파일을 분할하여 다른 하드웨어에서 judgehost만 실행하고 domserver에 연결할 수 있도록 해야 함.
- docker-compose의 기본 네트워크를 host 혹은 bridged로 변경하고 포트도 재설정하여 실제 상황에 적용할 수 있도록 해야 함.

## 최종 목표?
- 실행할 파일은 쉘 한개(옵션으로 다르게 동작시킴)
- 쉘을 이용하여 mariadb+domserver
- 쉘을 이용하여 judgehost 실행
- 웹 상에서 비밀번호 변경 작업 없이 judgehost 자동 연결
