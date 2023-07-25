# Base Image
FROM python:3.10-slim-bullseye

# Installing necessary packages
RUN pip install torch torchvision torchaudio
RUN pip install oloren

COPY . . 

# make dir checkpoints
RUN mkdir checkpoints

RUN pip install /LaTeX-OCR/

RUN python build.py

# Default command for the container
CMD ["python", "app.py"]