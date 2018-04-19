FROM ubuntu:xenial

# Install FFmpeg.
RUN apt-get update \
&& apt-get install -y ffmpeg \
&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT  ["ffmpeg"]
