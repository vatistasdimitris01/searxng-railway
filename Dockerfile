FROM searxng/searxng:latest

COPY settings.yml /etc/searxng/settings.yml
COPY limiter.toml /etc/searxng/limiter.toml

ENV SEARXNG_SETTINGS_PATH=/etc/searxng/settings.yml
ENV SEARXNG_REVERSE_PROXY=true
