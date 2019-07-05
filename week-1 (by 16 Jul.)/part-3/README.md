# Week 1 Part 3

## Run Web Server in the Background

You should keep web server alive even if you close connection from your instance or do other tasks at the same time.  
Find a way to run web server in the background and **write down your solution in README.md file.**

## MySQL Database Server

We will use MySQL as database solution. Today, let's install and run MySQL on your instance.

### Install and Run MySQL Server

Find a way to install and run MySQL on your instance. You can use MySQL 5.7 or 8.0 version.

### Manage MySQL from Command Line Interface

Connect to MySQL server from command line interface on your instance. Create a database named **stylish** and create a **product** table which includes columns listed below.

| Field | Type | Null | Key | Extra |
| :---: | :---: | :--- | :--- | :--- |
| id | bigint unsigned | no | primary | auto_increment |
| title | varchar(255) | no | | |

From now on, **always keep a SQL database file in your project** exported by mysqldump tool.

## Overview of What We Should Complete

### Complete RESTful APIs

Refer to [Stylish APIs](https://github.com/AppWorks-School/API-Doc/blob/master/Stylish/README.md), you should complete APIs listed below:

* **Product APIs.**
  * Product List API.
  * Product Search API.
  * Product Details API.
* **Marketing APIs.**
  * Marketing Campaigns API.
* **User APIs.**
  * User Sign Up API.
  * User Sign In API.
  * User Profile API.
* **Order APIs**
  * Order Check Out API.

### Create Simple Web Pages for Data Managemenet

For testing and management, you should create some simple web pages for data management.

* **/admin/product.html** for product management.
* **/admin/campaign.html** for campaign management.
* **/admin/checkout.html** for check out testing.
