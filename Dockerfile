FROM caddy:builder AS builder

RUN caddy-builder \

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
