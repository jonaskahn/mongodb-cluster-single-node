FROM mongo

RUN apt update && apt upgrade -y
RUN apt autoremove && apt autoclean

COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]