FROM ubuntu:16.04
MAINTAINER Anto Daniel
RUN apt-get update && apt-get install unzip zip wget git -y
RUN wget https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/2.7.0/credhub-linux-2.7.0.tgz && tar xvzf credhub-linux-2.7.0.tgz -C /usr/local/bin && rm -rfv credhub-linux-2.7.0.tgz
RUN wget https://releases.hashicorp.com/vault/1.4.2/vault_1.4.2_linux_amd64.zip && unzip vault_1.4.2_linux_amd64.zip -d /usr/local/bin && rm -rfv vault_1.4.2_linux_amd64.zip
RUN wget https://github.com/cloudfoundry/bosh-cli/releases/download/v6.0.0/bosh-cli-6.0.0-linux-amd64 && chmod a+x ./bosh-cli-6.0.0-linux-amd64 && mv ./bosh-cli-6.0.0-linux-amd64 /usr/local/bin/bosh
RUN wget https://packages.cloudfoundry.org/stable\?release\=linux64-binary\&version\=6.53.0\&source\=github-rel && mv stable\?release\=linux64-binary\&version\=6.53.0\&source\=github-rel cf.tar.gz && tar xvzf cf.tar.gz -C /usr/local/bin && rm -rfv cf.tar.gz
RUN wget https://golang.org/dl/go1.15.7.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz && rm -rfv go1.15.7.linux-amd64.tar.gz
RUN ls /usr/local/bin/bosh && echo bosh client done && ls /usr/local/bin/credhub && echo credhub done && ls /usr/local/bin/vault && echo vault done
RUN wget https://github.com/mikefarah/yq/releases/download/v4.9.6/yq_linux_amd64 && \
  mv yq_linux_amd64 yq && \
  chmod +x yq && \
  mv yq /usr/local/bin
RUN export PATH=$PATH:/usr/local/go/bin
