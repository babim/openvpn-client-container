FROM babim/alpinebase:ssh

ENV TERM=xterm-color

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    apk add --no-cache rsyslog supervisor openvpn

VOLUME ["/etc/openvpn"]

ENV CLIENT_CONFIG_FILE /etc/openvpn/client.conf

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
CMD ["app:start"]
