
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
12 rows in set (0.04 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.22 sec)

mysql> drop table demo;
Query OK, 0 rows affected (0.14 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address  | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd | 518616168    |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal      | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
2 rows in set (0.07 sec)

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
| state         | varchar(30)  | NO   |     | NULL    |       |
| country       | varchar(20)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.02 sec)

mysql> update customer set phone_number = '1211567890' where customer_id = 'c101';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address  | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd | 1211567890   |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal      | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%ta';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like '%hq';
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email_id        | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| c101        | Tanishq       | Mumbai | tan01@gmail.com | david rd | 1211567890   |  400021 |       0 |       |         |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like '%i%';
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address  | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd | 1211567890   |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal      | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%id%';
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id | address | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
| c106        | Sid           | Titwala | sid@1232 | dal     | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like '%T_';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like 'T_';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like 'S_';
Empty set (0.01 sec)

mysql> select * from customer where customer_name like 'S__';
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id | address | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
| c106        | Sid           | Titwala | sid@1232 | dal     | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
1 row in set (0.00 sec)

mysql> INSERT INTO customer
    -> VALUES ('C112','Vivek','Kalyan','vivek@.com','shahad rd',895633245,105161,11,'Maharashtra','India');
Query OK, 1 row affected (0.06 sec)

mysql> insert into customer VALUES ('C117','Max','Asansol','max@.com','sasdd rd',65103245,123161,18,'Maharashtra','India');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address   | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd  | 1211567890   |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal       | 561615116    |  161616 |      21 | maharashtra | india   |
| C112        | Vivek         | Kalyan  | vivek@.com      | shahad rd | 895633245    |  105161 |      11 | Maharashtra | India   |
| C117        | Max           | Asansol | max@.com        | sasdd rd  | 65103245     |  123161 |      18 | Maharashtra | India   |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
4 rows in set (0.02 sec)

mysql> select * from customer limit 2;
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address  | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd | 1211567890   |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal      | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
2 rows in set (0.01 sec)

mysql> select city from customer;
+---------+
| city    |
+---------+
| Mumbai  |
| Titwala |
| Kalyan  |
| Asansol |
+---------+
4 rows in set (0.00 sec)

mysql> select distinct city from customer;
+---------+
| city    |
+---------+
| Mumbai  |
| Titwala |
| Kalyan  |
| Asansol |
+---------+
4 rows in set (0.01 sec)

mysql> update customer set city = 'Titwala' where customer_id = 'c112';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address   | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd  | 1211567890   |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal       | 561615116    |  161616 |      21 | maharashtra | india   |
| C112        | Vivek         | Titwala | vivek@.com      | shahad rd | 895633245    |  105161 |      11 | Maharashtra | India   |
| C117        | Max           | Asansol | max@.com        | sasdd rd  | 65103245     |  123161 |      18 | Maharashtra | India   |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
4 rows in set (0.01 sec)


mysql> select distinct city from customer;
+---------+
| city    |
+---------+
| Mumbai  |
| Titwala |
| Asansol |
+---------+
3 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(5)  | NO   | PRI | NULL    |       |
| product_name   | varchar(10) | NO   |     | NULL    |       |
| category       | varchar(10) | NO   |     | NULL    |       |
| sub_category   | varchar(10) | YES  |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.03 sec)

mysql> select * from customer where bill_no<5;
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email_id        | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| c101        | Tanishq       | Mumbai | tan01@gmail.com | david rd | 1211567890   |  400021 |       0 |       |         |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where bill_no<10;
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email_id        | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| c101        | Tanishq       | Mumbai | tan01@gmail.com | david rd | 1211567890   |  400021 |       0 |       |         |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.01 sec)

mysql> select * from customer where bill_no<1;
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email_id        | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
| c101        | Tanishq       | Mumbai | tan01@gmail.com | david rd | 1211567890   |  400021 |       0 |       |         |
+-------------+---------------+--------+-----------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where bill_no>1;
+-------------+---------------+---------+------------+-----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id   | address   | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+------------+-----------+--------------+---------+---------+-------------+---------+
| c106        | Sid           | Titwala | sid@1232   | dal       | 561615116    |  161616 |      21 | maharashtra | india   |
| C112        | Vivek         | Titwala | vivek@.com | shahad rd | 895633245    |  105161 |      11 | Maharashtra | India   |
| C117        | Max           | Asansol | max@.com   | sasdd rd  | 65103245     |  123161 |      18 | Maharashtra | India   |
+-------------+---------------+---------+------------+-----------+--------------+---------+---------+-------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_name = 'Sid' or bill_no = '21';
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id | address | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
| c106        | Sid           | Titwala | sid@1232 | dal     | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
1 row in set (0.01 sec)

mysql> select * from customer where customer_name = 'Sid' and bill_no = '21';
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id | address | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
| c106        | Sid           | Titwala | sid@1232 | dal     | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+----------+---------+--------------+---------+---------+-------------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name = 'Sid' or bill_no = '11';
+-------------+---------------+---------+------------+-----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id   | address   | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+------------+-----------+--------------+---------+---------+-------------+---------+
| c106        | Sid           | Titwala | sid@1232   | dal       | 561615116    |  161616 |      21 | maharashtra | india   |
| C112        | Vivek         | Titwala | vivek@.com | shahad rd | 895633245    |  105161 |      11 | Maharashtra | India   |
+-------------+---------------+---------+------------+-----------+--------------+---------+---------+-------------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'C101' and 'C111';
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address  | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd | 1211567890   |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal      | 561615116    |  161616 |      21 | maharashtra | india   |
+-------------+---------------+---------+-----------------+----------+--------------+---------+---------+-------------+---------+
2 rows in set (0.01 sec)

mysql> select * from customer where customer_id between 'C101' and 'C120';
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address   | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd  | 1211567890   |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal       | 561615116    |  161616 |      21 | maharashtra | india   |
| C112        | Vivek         | Titwala | vivek@.com      | shahad rd | 895633245    |  105161 |      11 | Maharashtra | India   |
| C117        | Max           | Asansol | max@.com        | sasdd rd  | 65103245     |  123161 |      18 | Maharashtra | India   |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where customer_id in ('C101','C112','C117');
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address   | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd  | 1211567890   |  400021 |       0 |             |         |
| C112        | Vivek         | Titwala | vivek@.com      | shahad rd | 895633245    |  105161 |      11 | Maharashtra | India   |
| C117        | Max           | Asansol | max@.com        | sasdd rd  | 65103245     |  123161 |      18 | Maharashtra | India   |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where email_id is null;
Empty set (0.00 sec)

mysql> select * from customer where email_id is not null;
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| customer_id | customer_name | city    | email_id        | address   | phone_number | pincode | bill_no | state       | country |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
| c101        | Tanishq       | Mumbai  | tan01@gmail.com | david rd  | 1211567890   |  400021 |       0 |             |         |
| c106        | Sid           | Titwala | sid@1232        | dal       | 561615116    |  161616 |      21 | maharashtra | india   |
| C112        | Vivek         | Titwala | vivek@.com      | shahad rd | 895633245    |  105161 |      11 | Maharashtra | India   |
| C117        | Max           | Asansol | max@.com        | sasdd rd  | 65103245     |  123161 |      18 | Maharashtra | India   |
+-------------+---------------+---------+-----------------+-----------+--------------+---------+---------+-------------+---------+
4 rows in set (0.00 sec)

mysql>