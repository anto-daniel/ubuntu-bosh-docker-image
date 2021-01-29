FROM ubuntu:16.04
MAINTAINER Anto Daniel
RUN apt-get update && apt-get install unzip wget -y
RUN wget https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/2.7.0/credhub-linux-2.7.0.tgz
RUN wget https://releases.hashicorp.com/vault/1.4.2/vault_1.4.2_linux_amd64.zip
RUN wget https://github.com/cloudfoundry/bosh-cli/releases/download/v6.0.0/bosh-cli-6.0.0-linux-amd64
RUN chmod a+x ./bosh-cli-6.0.0-linux-amd64 
RUN mv ./bosh-cli-6.0.0-linux-amd64 /usr/local/bin/bosh
RUN tar xvzf credhub-linux-2.7.0.tgz -C /usr/local/bin
RUN unzip vault_1.4.2_linux_amd64.zip -d /usr/local/bin
RUN ls /usr/local/bin/bosh && echo bosh client done && ls /usr/local/bin/credhub && echo credhub done && ls /usr/local/bin/vault && echo vault done
