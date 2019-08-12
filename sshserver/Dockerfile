FROM alpine:3.7


RUN apk --update add --no-cache openssh bash \
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && rm -rf /var/cache/apk/*

VOLUME /data

RUN adduser -h /home/mhtsbt -s /bin/false -D mhtsbt

ADD sshd_config /etc/ssh/sshd_config

RUN /usr/bin/ssh-keygen -A
RUN ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key

EXPOSE 22

ADD entry.sh /entry.sh

CMD ["sh","entry.sh"]