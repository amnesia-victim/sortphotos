FROM python:slim-bookworm@sha256:d0c9bf03d80a3c00963f1b973760094c0b2070638fa64dd4f67d2247c0110efc AS base
RUN apt-get update -y
RUN apt-get install git -y
RUN git clone https://github.com/andrewning/sortphotos.git /app
WORKDIR /app
RUN perl -MCPAN -e 'Image::ExifTool'
RUN python3 setup.py install
CMD ["/bin/bash"]

