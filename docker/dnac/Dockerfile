FROM ubuntu:22.04

RUN apt-get update && \
  apt-get install -y gcc python3.11 git && \
  apt-get install -y python3-pip ssh && \
  pip3 install --upgrade pip && \
  pip3 install ansible && \
  pip3 install dnacentersdk && \
  pip3 install jmespath && \
  pip3 install pyats[full] && \ 
  pip3 install ansible-lint && \ 
  ansible-galaxy collection install cisco.dnac

RUN cd && mkdir .ssh && \
    printf 'KexAlgorithms=diffie-hellman-group14-sha1,diffie-hellman-group1-sha1\nHostkeyAlgorithms +ssh-rsa' > .ssh/config