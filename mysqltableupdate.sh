mysql -u root -pPassword@123 -e "use jwt;UPDATE user SET Host='%' WHERE Host='localhost' AND User='root';"
sudo systemctl restart mysql
