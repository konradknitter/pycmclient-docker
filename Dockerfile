# base image
FROM ubuntu:18.04

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
# Used by GitLab
    git \
# Used for Static Analysis
    python3-pip \
    python3-pytest \
    protobuf-compiler

RUN pip3 install --upgrade pip
RUN pip3 install pyinstaller
RUN pip3 install twine
RUN pip3 install --upgrade keyrings.alt

CMD ["/bin/bash"]
