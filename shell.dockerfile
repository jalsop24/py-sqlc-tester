FROM postgres:latest

RUN apt-get update \
    && apt-get install -y curl \
    && curl -fsSL -o /usr/local/bin/dbmate https://github.com/amacneil/dbmate/releases/latest/download/dbmate-linux-amd64 \
    && chmod +x /usr/local/bin/dbmate \
    && curl -fsSL -o /tmp/sqlc.tar.gz https://downloads.sqlc.dev/sqlc_1.30.0_linux_amd64.tar.gz \
    && tar -xzf /tmp/sqlc.tar.gz -C /usr/local/bin sqlc \
    && chmod +x /usr/local/bin/sqlc \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]