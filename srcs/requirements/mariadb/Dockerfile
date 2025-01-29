FROM debian:bullseye

# 1. 업데이트 및 MariaDB 설치
RUN apt-get update -y && \
    apt-get install -y mariadb-server

# 2. MariaDB 설정 파일 및 초기화 SQL 복사
COPY ./tools/ /var/www/

# 3. 데이터베이스 디렉토리 초기화
RUN mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql

# 4. SQL 파일 실행 및 초기 설정
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql && \
    mysqld --skip-networking --user=mysql & \
    sleep 5 && \
    mysql -u root < /var/www/createdb.sql && \
    rm -f /var/www/createdb.sql

# 5. MariaDB 포트 노출
EXPOSE 3306

# 6. MariaDB 시작
CMD ["mysqld_safe"]
