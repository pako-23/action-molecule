FROM python:3.15-slim

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /
COPY requirements.txt requirements.txt
RUN apt-get update && \
    apt-get install -y --no-install-recommends docker-cli=26.1.* && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir -r requirements.txt && \
    rm requirements.txt

ENTRYPOINT ["molecule", "test"]
