FROM ubuntu

RUN apt update && apt upgrade -y
RUN apt install -y      \
    sudo                \
    vim                 \
    binutils            \
    build-essential     \
    ninja-build         \
    python              \
    python-pip          \
    python3             \
    python3-pip         \
    git

RUN useradd -m dev && echo "dev:dev" | chpasswd && adduser dev sudo

USER dev
WORKDIR /home/dev