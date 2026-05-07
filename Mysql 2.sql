mysql> show databases;         
+-------------------------+      
| Database                |
+-------------------------+
| college                 |
| ecommerce               |
| employee                |
| information_schema      |
| mysql                   |
| performance_schema      |
| rd                      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| tru                     |
| world                   |
+-------------------------+
12 rows in set (0.06 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.03 sec)

mysql> desc customer;3
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.04 sec)

mysql> insert into customer(customer_id, name,city,email,address,phone_number,pincode)values('c101','Tanishq','Mumbai','tan01@gmail.com','david rd','518616168',400021);
Query OK, 1 row affected (0.04 sec)  (To insert values in table)

mysql> select * from customer;       (To display all values in a table)
+-------------+---------+--------+-----------------+----------+--------------+---------+
| customer_id | name    | city   | email           | address  | phone_number | pincode |
+-------------+---------+--------+-----------------+----------+--------------+---------+
| c101        | Tanishq | Mumbai | tan01@gmail.com | david rd | 518616168    |  400021 |
+-------------+---------+--------+-----------------+----------+--------------+---------+
1 row in set (0.04 sec)

mysql> select customer_id,name from customer;
+-------------+---------+
| customer_id | name    |
+-------------+---------+
| c101        | Tanishq |
+-------------+---------+
1 row in set (0.01 sec)

mysql> insert into customer values('c103','Kaml','Mumbai','kam01@gmail.com','moses rd','518616168',400021);
Query OK, 1 row affected (0.11 sec)

mysql> insert into customer values('c108','Kaml','Mumbai','kam01@gmail.com','moses rd','518616168',400021);
Query OK, 1 row affected (0.03 sec)

mysql> insert into customer values('c109','Kaml','Mumbai','kam01@gmail.com','moses rd','518616168',400021);
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------+--------+-----------------+----------+--------------+---------+
| customer_id | name    | city   | email           | address  | phone_number | pincode |
+-------------+---------+--------+-----------------+----------+--------------+---------+
| c101        | Tanishq | Mumbai | tan01@gmail.com | david rd | 518616168    |  400021 |
| c103        | Kaml    | Mumbai | kam01@gmail.com | moses rd | 518616168    |  400021 |
| c108        | Kaml    | Mumbai | kam01@gmail.com | moses rd | 518616168    |  400021 |
| c109        | Kaml    | Mumbai | kam01@gmail.com | moses rd | 518616168    |  400021 |
+-------------+---------+--------+-----------------+----------+--------------+---------+
4 rows in set (0.02 sec)

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.06 sec)

mysql> alter table customer rename column email to email_id;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email_id     | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> alter table customer add bill_no int not null;           (To alter or to go in same table)
Query OK, 0 rows affected (0.03 sec) 
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email_id     | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null,add country varchar(20) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email_id     | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
| state        | varchar(10)  | NO   |     | NULL    |       |
| country      | varchar(20)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> alter table customer change column name customer_name varchar(10) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(5)   | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email_id      | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_number  | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(20)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.01 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.04 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
1 row in set (0.01 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
1 row in set (0.01 sec)

mysql> alter table orders modify product_id varchar(10) not null;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(10) | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.05 sec)

mysql> alter table orders modify customer_id varchar(10) not null;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| customer_id  | varchar(10) | NO   | MUL | NULL    |                |
| product_id   | varchar(10) | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(5)   | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email_id      | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_number  | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(20)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.15 sec)

mysql> select * from customer;
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email_id        | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| c101        | Tanishq       | Mumbai | tan01@gmail.com | david rd | 518616168    |  400021 |       0 |       |         |
| c103        | Kaml          | Mumbai | kam01@gmail.com | moses rd | 518616168    |  400021 |       0 |       |         |
| c108        | Kaml          | Mumbai | kam01@gmail.com | moses rd | 518616168    |  400021 |       0 |       |         |
| c109        | Kaml          | Mumbai | kam01@gmail.com | moses rd | 518616168    |  400021 |       0 |       |         |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
4 rows in set (0.01 sec)

mysql> delete from customer where customer_name = 'Kaml';
Query OK, 3 rows affected (0.06 sec)

mysql> select * from customer;
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email_id        | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| c101        | Tanishq       | Mumbai | tan01@gmail.com | david rd | 518616168    |  400021 |       0 |       |         |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email_id        | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| c101        | Tanishq       | Mumbai | tan01@gmail.com | david rd | 518616168    |  400021 |       0 |       |         |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from demo;
Empty set (0.12 sec)

mysql> truncate table orders;
Query OK, 0 rows affected (0.38 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| customer_id  | varchar(10) | NO   | MUL | NULL    |                |
| product_id   | varchar(10) | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.09 sec)

mysql> select * from orders;
Empty set (0.01 sec)

mysql> alter table customer modify state varchar(30) not null;
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into customer values('c106','Sid','Titwala','sid@1232','dal','561615116',161616,'21','maharashtra','india');
Query OK, 1 row affected (0.02 sec)

mysql> select * from customer;
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address  | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd | 518616168    |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal      | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
2 rows in set (0.01 sec)

mysql> insert into customer values('c111','Vivek','Kalyan','vik@1233','Rs','561021116',65166,'26','maharashtra','india');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address  | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd | 518616168    |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal      | 561615116    |  161616 |      21 | maharashtra | india   |
| c111        | Vivek         | Kalyan  | vik@1233        | Rs       | 561021116    |   65166 |      26 | maharashtra | india   |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
3 rows in set (0.01 sec)

mysql> delete from customer where customer_id = 'c111';     (To delete entry from table)
Query OK, 1 row affected (0.03 sec)

mysql> select * from customer;
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address  | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd | 518616168    |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal      | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
2 rows in set (0.00 sec)

mysql>