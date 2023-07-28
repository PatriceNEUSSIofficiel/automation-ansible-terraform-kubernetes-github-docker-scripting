FROM patricehub/ssh-docker:latest 

ARG SSH_USER=hellouser
ARG SSH_KEY='pat.pub'

RUN apt install python3 -y

COPY $SSH_KEY /home/$SSH_USER/.ssh/authorized_keys


