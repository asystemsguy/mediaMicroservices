FROM yg397/thrift-microservice-deps:xenial

ARG NUM_CPUS=3

COPY ./ /media-microservices
RUN cd /media-microservices \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make -j${NUM_CPUS} \
    && make install

WORKDIR /media-microservices
