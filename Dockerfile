FROM python:3.10-slim

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get -qqy update && \
    apt-get -qqy install curl make openssl ca-certificates git build-essential zip unzip jq libz-dev && \
    apt-get clean && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN curl -fLo /usr/local/bin/bazel https://github.com/bazelbuild/bazelisk/releases/download/v1.11.0/bazelisk-linux-amd64 && \
		chown root:root /usr/local/bin/bazel && \
    chmod +x /usr/local/bin/bazel

RUN curl -fLo /usr/local/bin/bazel-remote https://github.com/buchgr/bazel-remote/releases/download/v2.3.3/bazel-remote-2.3.3-linux-x86_64 && \
		chown root:root /usr/local/bin/bazel-remote && \
    chmod +x /usr/local/bin/bazel-remote
