FROM bitnami/kubectl:latest

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get install --yes \
    curl \
    ssh \
    jq
