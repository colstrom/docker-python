FROM colstrom/ubuntu-core

ENV PYTHON_VERSION 3.5
ENV C_INCLUDE_PATH /usr/include/python$PYTHON_VERSION

RUN add-apt-repository --yes ppa:fkrull/deadsnakes \
    && apt-get update \
    && apt-get --assume-yes install python$PYTHON_VERSION python$PYTHON_VERSION-dev curl \
    && curl --silent https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py | python$PYTHON_VERSION \
    && ln -s `which python$PYTHON_VERSION` /usr/local/bin/python \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
