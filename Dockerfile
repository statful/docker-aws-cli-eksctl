FROM ubuntu:latest

MAINTAINER Vasco Santos <jvosantos@gmail.com>

ARG AWS_VERSION="2.0.29"
ARG EKSCTL_VERSION="0.22.0"

RUN apt-get update \
  && apt-get install -y ca-certificates curl unzip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_VERSION}.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && ./aws/install \
  && rm -rf aws awscliv2.zip

RUN curl --silent -L "https://github.com/weaveworks/eksctl/releases/download/${EKSCTL_VERSION}/eksctl_linux_amd64.tar.gz" | tar xz -C /tmp \
 &&  mv /tmp/eksctl /usr/local/bin

