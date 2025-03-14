FROM ubuntu
LABEL maintainer="sarp"

COPY ./entrypoint.sh /entrypoint.sh
RUN apt-get update \
    && apt-get install -y iptables iproute2 shadowsocks-libev wireguard-tools net-tools openresolv \
    && chmod +x /entrypoint.sh \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8388
EXPOSE 8388/udp
ENV TZ=Asia/Shanghai
ENV key=password
ENV dns=1.1.1.1
ENV method=aes-256-gcm
ENTRYPOINT "/entrypoint.sh"
