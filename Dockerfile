# Dockerfile for a haskell environment
FROM debian:jessie

# Create volume path
RUN mkdir -p /unleash
WORKDIR /unleash

# Install haskell
RUN apt-get update
RUN apt-get install -y wget
RUN wget -qO- https://get.haskellstack.org/ | sh

# Run the Hello World app
CMD ['stack', 'HelloWorld.hs']