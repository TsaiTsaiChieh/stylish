蔡采潔
</br>http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/
Run Web Server in the Background
Most step follow by this link:
https://hackernoon.com/tutorial-creating-and-managing-a-node-js-server-on-aws-part-2-5fbdea95f8a1
1. install PM2 globally
> npm i -g pm2
2. start your server (check the path of file your want to start correctly)
> pm2 start index.js
additional:
List all processes use> pm2 ls
Stop the pm2> pm2 stop index.js
Remove index from the pm2 list> pm2 delete index

sudo yum install mysql-server mysql-client
在安裝時 Mysql 時，途中不會要輸入帳號密碼
https://serverfault.com/questions/800268/how-to-set-root-password-for-aws-ec2-with-mysql-preinstalled
> service mysqld start
> /usr/libexec/mysql55/mysqladmin -u root password 'new-password'
即可
mysql -u root -p
// in mysql>
CREATE DATABASE stylish;
show databases;
use stylish; // 要選 Table
CREATE TABLE product(id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, title VARCHAR(255) NOT NULL, PRIMARY KEY(id));
desc product; // 看 product 欄位狀況

sudo mysqldump --databases stylish > dump.sql // in EC2
mysqlcp stylish > dump.sql // in local

