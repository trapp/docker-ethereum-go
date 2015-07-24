FROM ethereum/client-go

RUN add-apt-repository ppa:ethereum/ethereum-qt && \
    add-apt-repository ppa:ethereum/ethereum && \
    add-apt-repository ppa:ethereum/ethereum-dev && \
    apt-get update

RUN apt-get install -y solc

COPY supervisord.conf /supervisord.conf
