FROM amd64/caddy:2.1.0-builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/lego-deprecated

FROM amd64/caddy:2.1.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
