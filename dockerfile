FROM docker.io/library/ubuntu:latest

ENV TZ=Asia/Shanghai
ENV LANG=zh_CN.UTF-8
ENV LANGUAGE=zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y --fix-missing python3 python3-pip
RUN apt install -y --fix-missing language-pack-zh-hans locales locales-all fonts-noto 

RUN python3 -m pip install playwright

RUN playwright install-deps && playwright install chromium
