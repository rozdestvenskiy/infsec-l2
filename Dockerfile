FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt install -y openvpn openssh-server iptables
COPY openvpn.conf /etc/openvpn/server/
COPY ovpn.key /etc/openvpn/server/
#RUN iptables -t nat -A POSTROUTING -s 10.4.0.1/2 -o eth0 -j MASQUERADE >> log 2>log PRIVILEGED ONLY
ENV OPENVPN=/etc/openvpn
RUN service openvpn restart || echo 0
#RUN openvpn --config /etc/openvpn/server/openvpn.conf PRIVILEGED ONLY
EXPOSE 1194
