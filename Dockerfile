FROM python:3.12
RUN apt-get update && apt update && apt install -y \
  libgl1 \
  libglib2.0-0 \
  libxext6 \
  libsm6 \
  libxrender1 \
  libx11-6 \
  libxcb1 \
  libxcb-cursor0 \
  libxcb-xinerama0 \
  libxcb-render0 \
  libxcb-shm0 \
  libxcb-xfixes0 \
  libxcb-shape0 \
  libxcb-randr0 \
  libxcb-glx0 \
  libxkbcommon0 \
  libxkbcommon-x11-0
WORKDIR /facedetection
COPY best.pt best.pt
COPY facedetection.py facedetection.py
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
CMD ["python3","facedetection.py"]


