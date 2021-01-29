FROM ubuntu:16.04
MAINTAINER Anto Daniel
RUN apt-get update && apt-get install unzip zip wget git -y
RUN wget https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/2.7.0/credhub-linux-2.7.0.tgz && tar xvzf credhub-linux-2.7.0.tgz -C /usr/local/bin
RUN wget https://releases.hashicorp.com/vault/1.4.2/vault_1.4.2_linux_amd64.zip && unzip vault_1.4.2_linux_amd64.zip -d /usr/local/bin
RUN wget https://github.com/cloudfoundry/bosh-cli/releases/download/v6.0.0/bosh-cli-6.0.0-linux-amd64 && chmod a+x ./bosh-cli-6.0.0-linux-amd64 && mv ./bosh-cli-6.0.0-linux-amd64 /usr/local/bin/bosh
RUN wget https://packages.cloudfoundry.org/stable\?release\=linux64-binary\&version\=6.53.0\&source\=github-rel && mv stable\?release\=linux64-binary\&version\=6.53.0\&source\=github-rel cf.tar.gz && tar xvzf cf.tar.gz -C /usr/local/bin
RUN ls /usr/local/bin/bosh && echo bosh client done && ls /usr/local/bin/credhub && echo credhub done && ls /usr/local/bin/vault && echo vault done
