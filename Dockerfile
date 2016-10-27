FROM openshift/base-centos7

USER root

RUN yum update -y && \
    yum -y install memcached && \
    yum clean all -y

USER 1001

ENV MEMCACHED_PORT=11211
EXPOSE 11211

CMD memcached -p $MEMCACHED_PORT