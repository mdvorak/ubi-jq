FROM registry.access.redhat.com/ubi8/ubi-minimal:8.3-291
RUN microdnf install -y jq && microdnf clean all
USER nobody:nobody

ENTRYPOINT ["/usr/bin/jq"]
