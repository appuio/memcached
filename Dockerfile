FROM openshift/base-centos7

USER root

RUN yum update -y && \
    yum -y install memcached && \
    yum clean all -y

USER 1001

ENV MEMCACHED_SERVICE_PORT=11211
EXPOSE 11211

CMD memcached -l 0.0.0.0 -p $MEMCACHED_SERVICE_PORT