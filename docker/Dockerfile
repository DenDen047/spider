FROM golang

RUN apt-get update && apt-get upgrade -y

# ローカル時間を東京に変更
ENV TZ Asia/Tokyo

# libraries
RUN go get github.com/kkdai/youtube/v2

# cleanup
RUN rm -rf /var/lib/apt/lists/*
