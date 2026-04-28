FROM searxng/searxng:latest

# Copy config
COPY settings.yml /etc/searxng/settings.yml
COPY limiter.toml /etc/searxng/limiter.toml

# Ensure correct config path
ENV SEARXNG_SETTINGS_PATH=/etc/searxng/settings.yml

# Optional: better proxy support for Render/Railway
ENV SEARXNG_PROXY_FIX=true

EXPOSE 8080
