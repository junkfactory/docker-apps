FROM archlinux/archlinux:base-devel

ENV PATH="${PATH}:/home/junkfactory/home-bin"

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm git openssh neovim gnome-shell extra/vte3 zip jq jo && \
    sed -i 's/^# %wheel/%wheel/' /etc/sudoers && \
    ln -s /usr/sbin/nvim /usr/bin/vi && \
    useradd -s /bin/bash junkfactory && \
    usermod -aG wheel junkfactory 

USER junkfactory
WORKDIR /home/junkfactory
