from ubuntu:18.04

RUN mkdir /root/HQ

COPY HQ.py /root/HQ/
COPY HQ.sh /root/
COPY secret.key /root/HQ

# VOLUME ["/imports"]
ENTRYPOINT ["/bin/bash", "/root/HQ.sh"]