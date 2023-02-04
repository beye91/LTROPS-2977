FROM ubuntu:22.04 

RUN apt-get update && \
  apt-get install -y gnupg software-properties-common curl gcc python3.11 python3-pip git && \
  curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
  apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
  apt-get update && \
  apt-get install terraform && \
  pip3 install --upgrade pip && \
  pip3 install iac-validate==0.1.2 && \
  pip3 install iac-test==0.1.0

COPY ./ca.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates