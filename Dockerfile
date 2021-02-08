FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    apt-utils \
    libssl-dev \
    openssh-client \
    python3 \
    python3-dev \
    python3-pip \
    sshpass \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install ansible

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
