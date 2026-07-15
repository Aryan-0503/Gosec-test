# Intentionally lint-heavy Dockerfile for validating the hadolint scanner.
FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3
ADD . /app
RUN cd /app && pip install flask
CMD ./run.sh
