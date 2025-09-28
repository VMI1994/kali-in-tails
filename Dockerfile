FROM kalilinux/kali-rolling
RUN apt update -y
RUN apt upgrade -yq
CMD bash
