FROM alpine

MAINTAINER Vasco Santos <jvosantos@gmail.com>

ARG AWS_VERSION="1.16.234"
ARG EKSCTL_VERSION="0.5.2"

RUN apk update \
 &&  apk add ca-certificates curl py-pip py2-pip \
 &&  pip install --upgrade pip "awscli==${AWS_VERSION}" \
 &&  curl --silent -L "https://github.com/weaveworks/eksctl/releases/download/${EKSCTL_VERSION}/eksctl_linux_amd64.tar.gz" | tar xz -C /tmp \
 &&  mv /tmp/eksctl /usr/local/bin \
 &&  rm /var/cache/apk/*

