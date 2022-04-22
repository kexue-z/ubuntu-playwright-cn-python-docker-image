FROM docker.io/library/ubuntu:latest

ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8
ENV TZ Asia/Shanghai
ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y --fix-missing python3 python3-pip locales locales-all fonts-noto language-pack-zh-hans

RUN python3 -m pip install poetry playwright \
  && playwright install chromium \
  && apt-get install -y libnss3-dev libxss1 libasound2 libxrandr2\
  libatk1.0-0 libgtk-3-0 libgbm-dev libxshmfence1

