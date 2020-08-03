FROM harbor.sh.deepin.com/amd64/minbase:uos
#VOLUME ["/etc/","/var/","/usr/"]
EXPOSE 80  22
RUN echo "deb [by-hash=force trusted=yes] http://pools.corp.deepin.com/server-enterprise/  fou/sp2 main contrib non-free" > /etc/apt/sources.list
RUN apt update
RUN apt install -y iproute2 net-tools file procps deepin-keyring
# RUN echo "deb https://enterprise-packages.chinauos.com/server-enterprise fou/sp2 main contrib non-free" > /etc/apt/sources.list
#CMD ["/bin/sh"]


