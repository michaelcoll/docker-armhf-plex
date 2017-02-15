FROM michaelcoll/odroid-c2-armhf-base 

MAINTAINER Michael COLL <mick.coll@gmail.com>

RUN wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key | apt-key add - && \
    echo "deb https://dev2day.de/pms/ jessie main" | tee /etc/apt/sources.list.d/pms.list && \
    apt-get update -q && \
    apt-get install plexmediaserver-installer -qy && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/config","/media"]

ENV HOME=/config TERM="xterm" LANG="C.UTF-8" LC_ALL="C.UTF-8"

EXPOSE 32400/tcp 3005/tcp 8324/tcp 32469/tcp 1900/udp 32410/udp 32412/udp 32413/udp 32414/udp

CMD ["/usr/sbin/start_pms"]
