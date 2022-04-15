CREATE DATABASE ysrbolles;
CREATE DATABASE ybolles;
CREATE USER 'ybolles'@'localhost';
GRANT ALL PRIVILEGES ON ybolles.* to 'wpuser'@'localhost' IDENTIFIED BY 'ybolles';
FLUSH PRIVILEGES;