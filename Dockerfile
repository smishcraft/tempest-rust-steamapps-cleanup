FROM ghcr.io/parkervcp/games:rust

USER root

# Keep Parker's original entrypoint, but run our cleanup before it.
RUN mv /entrypoint.sh /entrypoint-original.sh

COPY tempest-entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh /entrypoint-original.sh

USER container

ENTRYPOINT ["/entrypoint.sh"]
