# 베이스 이미지로 Ubuntu 22.04 사용
FROM ubuntu:22.04

# 필요한 패키지 설치 (여기서는 socat만 예시로 설치)
RUN apt update && apt install -y socat

# 작업 디렉토리 설정
WORKDIR /chall/prob01

# 문제 바이너리와 flag 복사
COPY prob01/prob01_binary /chall/prob01/prob01_binary
COPY prob01/flag /chall/prob01/flag

# 실행 권한 부여
RUN chmod +x /chall/prob01/prob01_binary

# 사용자 추가
RUN useradd -m ctf

# 문제 파일에 대한 권한 변경
RUN chown -R ctf:ctf /chall/prob01

# socat을 사용해 포트를 리스닝하고, 문제 바이너리 실행
CMD su ctf -c "socat TCP-LISTEN:1337,reuseaddr,fork EXEC:/chall/prob01/prob01_binary,stderr"
