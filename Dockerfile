FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    gcc-arm-none-eabi

RUN python3 -m pip install qmk --break-system-packages

ARG source_repo=https://github.com/ALinkbetweenNets/vial-qmk-ik.git
ARG keymap=handwired/ianmaclarty/ik1_2:vial

RUN git clone $source_repo /qmk_firmware
WORKDIR /qmk_firmware

RUN /usr/bin/python3 -m pip install -r /qmk_firmware/requirements.txt --break-system-packages
RUN make ${keymap}
