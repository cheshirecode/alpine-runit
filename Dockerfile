FROM node:8.9.3-alpine

# base
RUN apk add --no-cache openntpd inotify-tools runit curl && \
  sh -c "nohup ntpd -d -f /etc/ntpd.conf -s > /dev/null 2>&1 &"
COPY ./scripts /tmp/scripts
RUN chmod -R +x /tmp/scripts && \
  find /tmp/scripts -type f | dos2unix

CMD tail -f /dev/null