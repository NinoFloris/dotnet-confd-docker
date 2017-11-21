FROM microsoft/aspnetcore:2.0.3

# Install confd
RUN curl -Lo confd https://github.com/kelseyhightower/confd/releases/download/v0.14.0/confd-0.14.0-linux-amd64 \
    && chmod +x confd \
    && mv confd /usr/local/bin/confd \
    && mkdir -p /etc/confd/conf.d \
    && mkdir -p /etc/confd/templates