# docker-debian-bazelisk-image
Minimal Debian Docker image with Bazelisk and bazel-remote cache. Primarily intended for running Bazel within a CI environment. 

The base image is [`python:3.10-slim`](https://hub.docker.com/_/python) and the following binaries are added:

* [Bazelisk](https://github.com/bazelbuild/bazelisk)
* [bazel-remote](https://github.com/buchgr/bazel-remote)
