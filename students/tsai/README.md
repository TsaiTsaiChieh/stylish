蔡采潔
</br>http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/
</br>Build Product Management Page:
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/admin/product.html

</br>Run Web Server in the Background
Most step follow by this link:
</br>https://hackernoon.com/tutorial-creating-and-managing-a-node-js-server-on-aws-part-2-5fbdea95f8a1

Product List API:
show number set 5 in all: http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/all</br>
default paging is 1: http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/women</br>
show number set 1 in men: http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/men?paging=1</br>
show number set 1 in accessories: http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/accessories?paging=2</br>
Product Search API:</br>
Examples(show number set 2):</br>
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/search?keyword=裝&paging=0</br>
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/search?keyword=裝&paging=1</br>
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/search?keyword=典</br>
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/search?keyword=襯衫</br>
Product Details API:</br>
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/products/details?id=10
- - -
Build Marketing Campaigns API:</br>
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/marketing/campaigns
- - -
Build User Html</br>
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/admin/sign.html</br>
Build User Profile APIs</br>
http://ec2-3-14-88-131.us-east-2.compute.amazonaws.com/api/1/user/profile

- - -
1. install PM2 globally
> npm i -g pm2
2. start your server (check the path of file your want to start correctly)
> pm2 start index.js
additional:
List all processes use> pm2 ls
Stop the pm2> pm2 stop index.js
Remove index from the pm2 list> pm2 delete index
start 前要把 killall -9 node
- - -
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

mysql -u root -p stylish < mysqldump.sql  // in EC2
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
修改 mysql 密碼：
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY '0000';
關閉 MySQL 安全模式
SET SQL_SAFE_UPDATES=0
- - -
mysql JSON 語法：
https://dev.mysql.com/doc/refman/8.0/en/json.html
- - - 
傳圖片檔案方法：
https://code.tutsplus.com/tutorials/file-upload-with-multer-in-node--cms-32088
https://www.js-tutorials.com/nodejs-tutorial/node-js-file-upload-example-using-multer-and-mysql/
https://kknews.cc/zh-tw/other/gvzxoom.html
- - -
Mysql 版本編碼問題 (Server 端是 5.7.26，本機端是 8)
https://blog.csdn.net/qq_27088383/article/details/53895033

utf8mb4_unicode_ci 全部改成 utf8_general_ci
</br>utf8mb4 改成 utf8
- - - 
網路傳輸時需要把原本程式中認為是物件的東西轉成字串，原本程式中認為是字串的東西，會看情況加上跳脫字元
https://training.pada-x.com/docs/article.jsp?key=javascript-json-introduction
- - -
程式上傳到 AWS 後，記得 AWS 的 package.json 也要和本機端一致
- - - 
Sign up 時，檢查有無重複註冊後，若無直接給一個新 token，有則 error message.
Sign in 時，檢查帳號密碼有無正確，若正確直接給一個新的 token，錯誤則 error message.
user/profile 先檢查 header 的 token 有無符合哪個 user，在檢查有無過期，過期則 erro message: authorization is required.，無過期則 show user 的 profile
- - -
in EC2:
cd mygit/Web-Backend-2019-Summer/students/tsai/stylish/mysql
git pull origin branch
mysql -u root -p stylish < mysqldump.sql 
pm2 delete app
pm2 start ../app.js

