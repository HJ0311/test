FROM mariadb:bullseye

# 기본 MariaDB 설정 파일 복사
COPY ./tools/my.cnf /etc/mysql/my.cnf

# 초기화 SQL 복사
COPY ./tools/init.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"]