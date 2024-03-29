FROM python:3.8

# Install OS Modules
RUN apt update -y && \
            apt install telnet -y && \
            rm -rf /var/lib/apt/lists/*
# Copy source code
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY requirements.txt /data-copier
# Install Application dependencies
RUN pip install -r /data-copier/requirements.txt