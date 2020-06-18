FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM caddy:2.1.0-beta.1-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
