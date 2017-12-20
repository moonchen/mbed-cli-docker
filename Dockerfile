FROM ubuntu:17.10
MAINTAINER Mo Chen <mo.chen@arm.com>
LABEL Description="An environment for running factory configurator utility"

RUN apt-get -y update -qq && apt-get install -y gcc-arm-none-eabi git python-minimal python3 python-pip
RUN pip install mbed-cli && mbed toolchain -G GCC_ARM

WORKDIR /work
ADD . /work
