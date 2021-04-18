FROM ubuntu:20.04
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  scapy \
  socat \
  strace \
  tcpdump \
  tcptraceroute \
  tshark \
  bc \
  bpfcc-tools \
  bpftrace \
  bzip2 \
  curl \
  dhcping \
  dos2unix \
  expect \
  git \
  iftop \
  jq \
  linux-headers-5.4.0-66-generic \
  lsof \
  lsscsi \
  lvm2 \
  mtr \
  mutt \
  nano \
  netcat  \
  net-tools \
  nmap \
  pciutils \
  psmisc \
  screen \
  sysdig \
  sysstat \
  telnet \
  time \
  tree \
  unzip \
  wget \
  zip

RUN wget -nv --no-check-certificate https://github.com/moshloop/systools/releases/download/3.6/systools.deb && dpkg -i systools.deb
RUN install_bin https://gitlab.com/gitlab-com/support/toolbox/strace-parser/uploads/0ecbc47fae307e1e024b045c4828edf9/strace-parser_0-7-1_linux_musl.tar.gz
