FROM debian:jessie

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      exim4 \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
  
  ENTRYPOINT [ "/entrypoint.sh" ] 
