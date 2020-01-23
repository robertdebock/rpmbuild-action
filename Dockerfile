FROM centos:8

WORKDIR /github/workspace

RUN dnf install -y rpmdevtools dnf-utils && \
    dnf clean all && \
    rm -r -f /var/cache/*

RUN echo '%_topdir %/github/workspace' > ~/.rpmmacros

CMD rpmbuild -ba SPECS/*.spec
