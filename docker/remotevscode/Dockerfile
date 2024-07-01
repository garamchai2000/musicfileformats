FROM ubuntu:latest

ENV TZ=America/Los_Angeles

#python3-pip: for vscode testing editing python code
#curl: for vscode to remotely edit code
#nano: in case an editor is needed

RUN \
  apt update && apt upgrade -y \
  && apt install -y openssh-server openssh-client python3-pip curl nano \
  && apt clean \
  && echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config \
  && echo "AllowUsers vsuser" >> /etc/ssh/sshd_config

RUN useradd -m -p vsuser -s /bin/bash vsuser
RUN echo "vsuser:vsuser" | chpasswd
#use env vars or some other means to pass on password value, instead of actual value like above
#check /etc/shadow to make sure an encrypted password exists for vsuser, else can't ssh

RUN service ssh start

CMD ["/usr/sbin/sshd", "-D"]
