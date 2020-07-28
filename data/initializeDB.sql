CREATE DATABASE testlink;
CREATE USER admin@localhost;
SET PASSWORD FOR admin@localhost = 'admin';
GRANT ALL PRIVILEGES ON testlink.* TO admin@localhost;
