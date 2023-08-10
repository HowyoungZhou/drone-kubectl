ARG ALPINE_VERSION=3.18

FROM alpine:${ALPINE_VERSION}

ARG ARCH=amd64
# ARG HELM_VERSION=3.12.2
ARG KUBECTL_VERSION=1.27.4

LABEL maintainer "Howyoung <me@howyoung.dev>"

# RUN wget -q -O - https://get.helm.sh/helm-v${HELM_VERSION}-linux-${ARCH}.tar.gz | tar -xvz && \
#     mv linux-${ARCH}/helm /usr/bin/helm && \
#     chmod +x /usr/bin/helm && \
#     rm -rf linux-${ARCH}

RUN wget -q -O /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/${ARCH}/kubectl && \
    chmod +x /usr/bin/kubectl

COPY init-kubectl kubectl /opt/kubectl/bin/

ENV PATH="/opt/kubectl/bin:$PATH"

RUN apk add --update --no-cache bash jq yq gettext

ENTRYPOINT ["kubectl"]

CMD ["--help"]
