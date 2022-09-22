FROM ubuntu:22.04

ARG UID=1000
ARG GID=1000
ENV USERNAME yoctouser

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        gawk \
        wget \
        git-core \
        subversion \
        diffstat \
        unzip \
        sysstat \
        texinfo \
        build-essential \
        chrpath \
        socat \
        python \
        python3 \
        python3-pip \
        python3-pexpect \
        xz-utils  \
        locales \
        cpio \
        screen \
        tmux \
        sudo \
        iputils-ping \
        python3-git \
        python3-jinja2 \
        libegl1-mesa \
        libsdl1.2-dev \
        pylint3 \
        xterm \
        iproute2 \
        fluxbox \
        tightvncserver \
        lz4 \
        zstd && \
    cp -af /etc/skel/ /etc/vncskel/ && \
    echo "export DISPLAY=1" >>/etc/vncskel/.bashrc && \
    mkdir  /etc/vncskel/.vnc && \
    echo "" | vncpasswd -f > /etc/vncskel/.vnc/passwd && \
    chmod 0600 /etc/vncskel/.vnc/passwd && \
    /usr/sbin/locale-gen en_US.UTF-8 && \
    echo 'dash dash/sh boolean false' | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash

RUN echo "${USERNAME} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USERNAME} && \
    chmod 0440 /etc/sudoers.d/${USERNAME}
RUN groupadd -g $GID $USERNAME && \
    useradd -g $GID -m -s /bin/bash -u $UID $USERNAME

USER $USERNAME
WORKDIR /home/$USERNAME
CMD /bin/bash