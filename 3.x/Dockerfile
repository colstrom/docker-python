FROM colstrom/alpine

RUN apk-install openssl python3 \
    && wget https://bootstrap.pypa.io/get-pip.py -O - | python3 \
    && apk del openssl

ENTRYPOINT ["python3"]
