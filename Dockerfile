FROM python:3.10.11-slim
# Uses Debian 11 as base image

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get -qqy update && \
    apt-get -qqy install curl make ca-certificates git build-essential && \
    apt-get clean && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN apt-get -qqy update && \
    apt-get -qqy install curl zip unzip jq libz-dev && \
    apt-get clean && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN apt-get -qqy update && \
    apt-get -qqy install openssl libssl-dev pkg-config && \
    apt-get clean && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN curl -fLo /usr/bin/yq https://github.com/mikefarah/yq/releases/download/v4.2.0/yq_linux_amd64 && chmod +x /usr/bin/yq

RUN curl -fLo /usr/local/bin/bazel https://github.com/bazelbuild/bazelisk/releases/download/v1.12.2/bazelisk-linux-amd64 && \
		chown root:root /usr/local/bin/bazel && \
    chmod +x /usr/local/bin/bazel

RUN curl -fLo /usr/local/bin/bazel-remote https://github.com/buchgr/bazel-remote/releases/download/v2.4.1/bazel-remote-2.4.1-linux-x86_64 && \
		chown root:root /usr/local/bin/bazel-remote && \
    chmod +x /usr/local/bin/bazel-remote
