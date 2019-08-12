FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV USER root

RUN apt update && \
    apt install -y --no-install-recommends ubuntu-desktop && \
    apt install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal && \
    apt install -y tightvncserver && \
    apt autoclean -y \
    apt autoremove -y && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/list/*


# ADD .vnc /root/.vnc
# RUN chmod 600 /root/.vnc/passwd

CMD /usr/bin/vncserver :1 -geometry 1280x800 -depth 24 && tail -f /root/.vnc/*:1.log

EXPOSE 5901