FROM ubuntu:20.04

RUN apt-get update && apt-get install -y sshpass

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
