# Base Image
FROM python:3.10-slim-bullseye

# Installing necessary packages
RUN pip install torch torchvision torchaudio
RUN pip install --user pix2tex
RUN pip install oloren

# Copying application code to the Docker image
COPY app.py /app.py

# Default command for the container
CMD ["python", "app.py"]