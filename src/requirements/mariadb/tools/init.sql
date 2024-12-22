-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};
-- 새로운 MariaDB 사용자 계정 생성(%: 해당 사용자가 모든 호스트에서 접근 가능)
CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
-- 데이터베이스 사용자에게 특정 데이터베이스에 대한 모든 권한 부여
GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%'; 
-- 변경 사항 즉시 반영
FLUSH PRIVILEGES;