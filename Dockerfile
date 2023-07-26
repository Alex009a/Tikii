FROM fedora:37

RUN dnf -qq -y update && dnf -qq -y install git aria2 bash xz wget curl && dnf clean all

COPY . .

CMD ["bash","start.sh"]
