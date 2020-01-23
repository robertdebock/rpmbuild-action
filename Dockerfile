FROM centos:8

WORKDIR /github/workspace

RUN dnf install -y rpmdevtools dnf-utils && \
    dnf clean all && \
    rm -r -f /var/cache/*

CMD rpmbuild --define '_topdir /github/workspace' -ba SPECS/*.spec
