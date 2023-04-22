FROM nvidia/cuda:11.8.0-devel-ubuntu22.04
WORKDIR /app
RUN apt-get update && apt-get install -y git python3 python3-pip
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /app/stable-diffusion-webui

WORKDIR /app/stable-diffusion-webui
COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
