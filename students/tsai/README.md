蔡采潔
</br>http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/
</br>Run Web Server in the Background
Most step follow by this link:
</br>https://hackernoon.com/tutorial-creating-and-managing-a-node-js-server-on-aws-part-2-5fbdea95f8a1
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
> service mysqld start (很重要！)
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

- - -
Upgrade mysql to 5.7 (因為 5.5 版不能用 JSON)
https://www.basvanbeek.nl/linux/upgrade-mysql-5-5-to-5-7-on-centos-6/
https://serverfault.com/questions/873955/how-solve-mysql-5-7-dependency
1. remove old mysql
> sudo yum remove mysql-server
> sudo yum autoremove
2. download latest MySQL for CentOS 6
sudo wget https://dev.mysql.com/get/mysql80-community-release-el6-2.noarch.rpm
sudo rpm -Uvh mysql80-community-release-el6-2.noarch.rpm
yum repolist all | grep mysql
sudo yum-config-manager --enable mysql57-community
sudo yum-config-manager --disable mysql80-community
sudo yum-config-manager --enable 57-community-source
yum update mysql
3. 
sudo yum install https://dev.mysql.com/get/mysql57-community-release-el6-11.noarch.rpm
yum clean all
yum install mysql-community-server
