FROM microsoft/dotnet:1.0.0-rc2-core-deps

# Install curl
RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && update-ca-certificates

# Install confd
RUN curl -Lo confd https://github.com/kelseyhightower/confd/releases/download/v0.12.0-alpha3/confd-0.12.0-alpha3-linux-amd64 \
    && chmod +x confd \
    && mv confd /usr/local/bin/confd \
    && mkdir -p /etc/confd/conf.d \
    && mkdir -p /etc/confd/templates