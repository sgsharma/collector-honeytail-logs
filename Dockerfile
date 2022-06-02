FROM debian:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && wget https://honeycomb.io/download/honeytail/v1.6.2/honeytail_1.6.2_arm64.deb \
  && echo 'c2c844f51b9f29f6809b63b2554bbe9a045a8ff1b3e745ae050a46408244fa06  honeytail_1.6.2_arm64.deb' | sha256sum -c \
  && dpkg -i honeytail_1.6.2_arm64.deb

COPY start_honeytail.sh /start_honeytail.sh

ENTRYPOINT /start_honeytail.sh