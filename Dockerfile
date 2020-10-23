FROM alpine

RUN apk add --no-cache openssh-client sshpass ansible \
  && ansible-galaxy collection install community.general

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
