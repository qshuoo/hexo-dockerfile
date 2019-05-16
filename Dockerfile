From centos:7

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 \
    && yum install -y epel-release \
    && yum install -y nodejs \
    && npm install hexo-cli -g \
    && yum clean all

EXPOSE 4000

CMD ["/bin/bash"]
