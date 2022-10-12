FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add --no-cache curl ca-certificates jq openssh bash && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv -v kubectl /usr/local/bin/
