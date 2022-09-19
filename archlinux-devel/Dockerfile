FROM archlinux:base-devel

ENV PATH="${PATH}:/home/junkfactory/home-bin"

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm git openssh vim gnome-shell zip jq jo && \
    sed -i 's/^# %wheel/%wheel/' /etc/sudoers && \
    ln -s /usr/sbin/vim /usr/bin/vi && \
    useradd -s /bin/bash junkfactory && \
    usermod -aG wheel junkfactory 

USER junkfactory
WORKDIR /home/junkfactory
