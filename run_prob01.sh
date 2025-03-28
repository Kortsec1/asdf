#!/bin/bash

# 기본 포트 번호 설정
PORT=6000

echo "Starting challenge on port $PORT..."

# Docker 이미지를 빌드 (Dockerfile 경로를 명시)
docker build -f ./prob01.Dockerfile -t pwnable_prob01 .

# 컨테이너 실행 (기본 포트 1337로 설정)
docker run -d -p $PORT:$PORT --name pwnable_prob01 pwnable_prob01
