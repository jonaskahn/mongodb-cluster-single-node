FROM mongo

RUN apt update && apt upgrade -y
RUN apt autoremove && apt autoclean

COPY entrypoint.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 27017
CMD [ "/usr/bin/mongod","--keyFile","/etc/replica.key","--bind_ip_all","--replSet" ,"rs0" ]