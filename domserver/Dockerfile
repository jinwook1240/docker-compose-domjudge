FROM domjudge/domserver:7.2.0
ADD wait-for-mariadb.sh /scripts/
RUN chmod +x /scripts/*
CMD /scripts/start.sh
