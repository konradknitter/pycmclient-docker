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

CMD ["/bin/bash"]
