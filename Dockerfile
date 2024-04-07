FROM almalinux:9

LABEL maintainer="RaBe IT Reaktion <it@rabe.ch>"
LABEL vendor="Radio Bern RaBe <http://rabe.ch>"

RUN set -x; \
 dnf update -y \
 && dnf install git python3-pip -y \
 && dnf clean all

RUN mkdir /usr/local/lib/knaboard-tasks-from-email \
 && git clone https://github.com/radiorabe/kanboard-tasks-from-email.git \
 /usr/local/lib/kanboard-tasks-from-email \
 && pip3 install -r /usr/local/lib/kanboard-tasks-from-email/requirements.txt

ENTRYPOINT [ "python3", \
 "/usr/local/lib/kanboard-tasks-from-email/src/tasks_from_email.py" ]