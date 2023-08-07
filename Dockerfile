ARG VERSION
FROM bitnami/kubectl:${VERSION}

LABEL maintainer "Howyoung <me@howyoung.dev>"

COPY init-kubectl kubectl /opt/kubectl/bin/

USER root

ENV PATH="/opt/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
