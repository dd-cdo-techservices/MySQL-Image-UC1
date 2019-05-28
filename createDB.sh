echo "Creating Database jwt and tables.....\n"

sudo mysqladmin -u root -pPassword@123 create jwt

mysql -u root -D mysql -pPassword@123 -e "use mysql;UPDATE user SET Host='%' WHERE Host='localhost' AND User='root';"

mysql -u root -pPassword@123 -e "use jwt;CREATE table USER (first_name varchar(20), last_name varchar(20), email varchar(20), username varchar(20), password varchar(20), regdate varchar(20));"

sudo systemctl restart mysql

