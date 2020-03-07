FROM debian:latest

WORKDIR /home
# COPY . /home

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-setuptools\
    python3-wheel\
    build-essential\
    python3-dev\
    python3-numpy \
    python3-matplotlib \
    python3-scipy \
    python3-pandas \
    python3-simpy \
    cython3 \
    jupyter-notebook \
&& rm -rf /var/lib/apt/lists/*

RUN pip3 install qutip

# CMD ["jupyter", "notebook",  "--port=8888", "--no-browser", "--allow-root", "--ip=0.0.0.0"]