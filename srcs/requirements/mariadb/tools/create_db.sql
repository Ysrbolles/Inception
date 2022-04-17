CREATE DATABASE ysrbolles;
CREATE DATABASE ybolles;
CREATE USER 'ybolles'@'%';
GRANT ALL PRIVILEGES ON ybolles.* to 'wpuser'@'localhost' IDENTIFIED BY 'ybolles';
GRANT ALL PRIVILEGES ON ybolles.* to 'wpuser'@'%' IDENTIFIED BY 'ybolles';
FLUSH PRIVILEGES;