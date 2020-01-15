FROM domjudge/domserver:latest
ADD wait-for-mariadb.sh /scripts/
RUN chmod +x /scripts/*
CMD /scripts/start.sh
