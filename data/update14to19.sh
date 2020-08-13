echo "Copy Files"

echo y | cp /opt/1.9.17_step1_db_schema_update.sql  /var/www/html/testlink/install/sql/alter_tables/1.9.17/mysql/DB.1.9.17/step1/db_schema_update.sql
echo y | cp /opt/1.9.18_step1_db_schema_update.sql  /var/www/html/testlink/install/sql/alter_tables/1.9.18/mysql/DB.1.9.18/step1/db_schema_update.sql

echo "1.9.15"
sleep 1
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.15/mysql/DB.1.9.15/step1/db_schema_update.sql
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.15/mysql/DB.1.9.15/stepZ/z_final_step.sql
echo "1.9.16"
sleep 1
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.16/mysql/DB.1.9.16/step1/db_schema_update.sql
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.16/mysql/DB.1.9.16/stepZ/z_final_step.sql
echo "1.9.17"
sleep 1
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.17/mysql/DB.1.9.17/step1/db_schema_update.sql
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.17/mysql/DB.1.9.17/stepZ/z_final_step.sql
echo "1.9.18"
sleep 1
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.18/mysql/DB.1.9.18/step1/db_schema_update.sql
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.18/mysql/DB.1.9.18/stepZ/z_final_step.sql
sleep 1
echo "1.9.19"
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.19/mysql/DB.1.9.19/step1/db_schema_update.sql
mysql -uroot -proot testlink < /var/www/html/testlink/install/sql/alter_tables/1.9.19/mysql/DB.1.9.19/stepZ/z_final_step.sql
