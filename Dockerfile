FROM ubuntu:20.04
ARG POSTGRES_VERSION=12
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  awscli \
  bc \
  bird \
  bpfcc-tools \
  bpftrace \
  bridge-utils \
  bzip2 \
  curl \
  dhcping \
  dos2unix \
  dnsutils \
  ethtool \
  expect \
  file\
  fping \
  git \
  git \
  httpie \
  iftop \
  iftop \
  iperf \
  iproute2 \
  ipset \
  iptables \
  iptraf-ng \
  iputils-ping \
  ipvsadm \
  jq \
  lsof \
  lsscsi \
  lvm2 \
  mtr \
  mtr \
  mutt \
  mysql-client \
  nano \
  net-tools \
  netcat  \
  netcat-openbsd \
  nftables \
  ngrep \
  nmap \
  openssl \
  pciutils \
  postgresql-client \
  psmisc \
  python-setuptools python3-pip python3-dev \
  scapy \
  scapy \
  screen \
  socat \
  strace \
  sysdig \
  sysstat \
  tcpdump \
  tcptraceroute \
  telnet \
  time \
  tree \
  tshark \
  unzip \
  util-linux \
  vim \
  wget \
  zip \
  zsh \
  && curl -sL https://aka.ms/InstallAzureCLIDeb | bash \
  && rm -Rf /var/lib/apt/lists/* && apt-get clean

ARG KERNEL_VERSION=5.4.0-66-generic
RUN apt-get update && apt-get install -y linux-headers-5.4.0-66-generic && rm -Rf /var/lib/apt/lists/* && apt-get clean

ARG RESTIC_VERSION=0.12.0
RUN wget -nv --no-check-certificate https://github.com/moshloop/systools/releases/download/3.6/systools.deb && dpkg -i systools.deb
RUN install_bin https://gitlab.com/gitlab-com/support/toolbox/strace-parser/uploads/0ecbc47fae307e1e024b045c4828edf9/strace-parser_0-7-1_linux_musl.tar.gz
RUN install_bin https://github.com/restic/restic/releases/download/v${RESTIC_VERSION}/restic_${RESTIC_VERSION}_linux_amd64.bz2
RUN install_bin https://github.com/mikefarah/yq/releases/download/v4.9.3/yq_linux_amd64.tar.gz
RUN install_bin https://github.com/vi/websocat/releases/download/v1.8.0/websocat_amd64-linux-static
ARG SOPS_VERSION=3.5.0
RUN install_deb https://github.com/mozilla/sops/releases/download/v${SOPS_VERSION}/sops_${SOPS_VERSION}_amd64.deb
