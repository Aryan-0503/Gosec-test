# Intentionally lint-heavy Dockerfile for validating the hadolint scanner.
CMD ["echo", "Hello, World!"]RUN apt-get update && apt-get install -y python3
ADD . /app
RUN cd /app && pip install flask
CMD ./run.sh
