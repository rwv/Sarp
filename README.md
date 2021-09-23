*Shadowsocks-libev+Warp(Base-Ubuntu)*  

Branches "[base-alpine](https://github.com/Mitsuhaxy/Sarp/tree/base-alpine)" be use
  
# How to use:
1.Build image:
```
docker build -t sarp .
```
  
2.Put ```wgcf.conf``` to ```/etc/wireguard/``` .
  
3.Modify ```docker-compose.yml``` to define your port,password,method,dns.
  
4.Running:
```
docker-compose up -d
```
