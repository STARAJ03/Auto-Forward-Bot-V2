FROM python:3.11-slim-bookworm

# Install system packages
RUN apt update && apt upgrade -y && \
    apt install -y git && \
    apt clean

# Copy and install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r /requirements.txt

# Set up application directory
RUN mkdir /fwdbot
WORKDIR /fwdbot
RUN Procfile
#COPY start.sh /start.sh
#CMD ["/bin/bash", "/start.sh"]
