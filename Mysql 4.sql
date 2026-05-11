
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| bank                    |
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
13 rows in set (0.05 sec)

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
3 rows in set (0.02 sec)

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
8 rows in set (0.04 sec)

mysql> select * from orders;
Empty set (0.04 sec)

mysql> create database aggregation;
Query OK, 1 row affected (0.11 sec)

mysql> CREATE TABLE product (
    ->     product_id VARCHAR(10) PRIMARY KEY NOT NULL,
    ->     product_name VARCHAR(20) NOT NULL,
    ->     category VARCHAR(20) NOT NULL,
    ->     original_price DOUBLE(12,2) NOT NULL,
    ->     selling_price DOUBLE(12,2) NOT NULL,
    ->     stock INT NOT NULL
    -> );
Query OK, 0 rows affected, 2 warnings (0.19 sec)

mysql> desc product;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| product_id     | varchar(10)  | NO   | PRI | NULL    |       |
| product_name   | varchar(20)  | NO   |     | NULL    |       |
| category       | varchar(20)  | NO   |     | NULL    |       |
| original_price | double(12,2) | NO   |     | NULL    |       |
| selling_price  | double(12,2) | NO   |     | NULL    |       |
| stock          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.07 sec)

mysql> insert into product values('P101','Chair','Furniture',1005,1500,15);
Query OK, 1 row affected (0.03 sec)

mysql> insert into product values('P102','Table','Furniture',1050,1100,12),('P103','Mobile','Electronic',19000,21000,20),('P104','Laptop','Electronic',45000,55000,10),('P105','Pen','Stationary',1000,2000,60);
Query OK, 4 rows affected (0.08 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc product;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| product_id     | varchar(10)  | NO   | PRI | NULL    |       |
| product_name   | varchar(20)  | NO   |     | NULL    |       |
| category       | varchar(20)  | NO   |     | NULL    |       |
| original_price | double(12,2) | NO   |     | NULL    |       |
| selling_price  | double(12,2) | NO   |     | NULL    |       |
| stock          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.07 sec)

mysql> select * from product;
+------------+--------------+------------+----------------+---------------+-------+
| product_id | product_name | category   | original_price | selling_price | stock |
+------------+--------------+------------+----------------+---------------+-------+
| P101       | Chair        | Furniture  |        1005.00 |       1500.00 |    15 |
| P102       | Table        | Furniture  |        1050.00 |       1100.00 |    12 |
| P103       | Mobile       | Electronic |       19000.00 |      21000.00 |    20 |
| P104       | Laptop       | Electronic |       45000.00 |      55000.00 |    10 |
| P105       | Pen          | Stationary |        1000.00 |       2000.00 |    60 |
+------------+--------------+------------+----------------+---------------+-------+
5 rows in set (0.01 sec)

mysql> select sum(selling_price) from product;
+--------------------+
| sum(selling_price) |
+--------------------+
|           80600.00 |
+--------------------+
1 row in set (0.00 sec)

mysql>
mysql> select avg(selling_price) from product;
+--------------------+
| avg(selling_price) |
+--------------------+
|       16120.000000 |
+--------------------+
1 row in set (0.01 sec)

mysql> select count(*) from product;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.04 sec)

mysql> select max(stock) from product;
+------------+
| max(stock) |
+------------+
|         60 |
+------------+
1 row in set (0.01 sec)

mysql> select min(stock) from product;
+------------+
| min(stock) |
+------------+
|         10 |
+------------+
1 row in set (0.00 sec)

mysql> select * from product order by stock;
+------------+--------------+------------+----------------+---------------+-------+
| product_id | product_name | category   | original_price | selling_price | stock |
+------------+--------------+------------+----------------+---------------+-------+
| P104       | Laptop       | Electronic |       45000.00 |      55000.00 |    10 |
| P102       | Table        | Furniture  |        1050.00 |       1100.00 |    12 |
| P101       | Chair        | Furniture  |        1005.00 |       1500.00 |    15 |
| P103       | Mobile       | Electronic |       19000.00 |      21000.00 |    20 |
| P105       | Pen          | Stationary |        1000.00 |       2000.00 |    60 |
+------------+--------------+------------+----------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> select * from product order by stock desc;
+------------+--------------+------------+----------------+---------------+-------+
| product_id | product_name | category   | original_price | selling_price | stock |
+------------+--------------+------------+----------------+---------------+-------+
| P105       | Pen          | Stationary |        1000.00 |       2000.00 |    60 |
| P103       | Mobile       | Electronic |       19000.00 |      21000.00 |    20 |
| P101       | Chair        | Furniture  |        1005.00 |       1500.00 |    15 |
| P102       | Table        | Furniture  |        1050.00 |       1100.00 |    12 |
| P104       | Laptop       | Electronic |       45000.00 |      55000.00 |    10 |
+------------+--------------+------------+----------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> select * from product order by stock desc limit 3;
+------------+--------------+------------+----------------+---------------+-------+
| product_id | product_name | category   | original_price | selling_price | stock |
+------------+--------------+------------+----------------+---------------+-------+
| P105       | Pen          | Stationary |        1000.00 |       2000.00 |    60 |
| P103       | Mobile       | Electronic |       19000.00 |      21000.00 |    20 |
| P101       | Chair        | Furniture  |        1005.00 |       1500.00 |    15 |
+------------+--------------+------------+----------------+---------------+-------+
3 rows in set (0.01 sec)

mysql> CREATE TABLE employee (
    ->     employee_id VARCHAR(10) PRIMARY KEY NOT NULL,
    ->     employee_name VARCHAR(20) NOT NULL,
    ->     department VARCHAR(20) NOT NULL,
    ->     salary DOUBLE(10,2) NOT NULL
    -> );
Query OK, 0 rows affected, 1 warning (0.18 sec)

mysql> desc employee;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | varchar(10)  | NO   | PRI | NULL    |       |
| employee_name | varchar(20)  | NO   |     | NULL    |       |
| department    | varchar(20)  | NO   |     | NULL    |       |
| salary        | double(10,2) | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

mysql> insert employee values('112','Vivek','HR',50000), ('113','Sid','Sales',642302),('114','Ajit','Marketing',50000);
Query OK, 3 rows affected (0.10 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+---------------+------------+-----------+
| employee_id | employee_name | department | salary    |
+-------------+---------------+------------+-----------+
| 111         | Tanishq       | IT         | 100000.00 |
| 112         | Vivek         | HR         |  50000.00 |
| 113         | Sid           | Sales      | 642302.00 |
| 114         | Ajit          | Marketing  |  50000.00 |
+-------------+---------------+------------+-----------+
4 rows in set (0.02 sec)

mysql> select department,count(*) as total_employee from employee group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| IT         |              1 |
| HR         |              1 |
| Sales      |              1 |
| Marketing  |              1 |
+------------+----------------+
4 rows in set (0.11 sec)

mysql> select department,count(*) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |            1 |
| HR         |            1 |
| Sales      |            1 |
| Marketing  |            1 |
+------------+--------------+
4 rows in set (0.01 sec)

mysql> select salary,count(*) as total_salary from employee group by salary;
+-----------+--------------+
| salary    | total_salary |
+-----------+--------------+
| 100000.00 |            1 |
|  50000.00 |            2 |
| 642302.00 |            1 |
+-----------+--------------+
3 rows in set (0.00 sec)

mysql> select department,sum(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |    100000.00 |
| HR         |     50000.00 |
| Sales      |    642302.00 |
| Marketing  |     50000.00 |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select department,avg(salary) as total_salary from employee group by department;
+------------+---------------+
| department | total_salary  |
+------------+---------------+
| IT         | 100000.000000 |
| HR         |  50000.000000 |
| Sales      | 642302.000000 |
| Marketing  |  50000.000000 |
+------------+---------------+
4 rows in set (0.10 sec)

mysql> select department,avg(salary) as average_salary from employee group by department;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| IT         |  100000.000000 |
| HR         |   50000.000000 |
| Sales      |  642302.000000 |
| Marketing  |   50000.000000 |
+------------+----------------+
4 rows in set (0.00 sec)

mysql> select department, salary,count(*) from employee group by department, salary;
+------------+-----------+----------+
| department | salary    | count(*) |
+------------+-----------+----------+
| IT         | 100000.00 |        1 |
| HR         |  50000.00 |        1 |
| Sales      | 642302.00 |        1 |
| Marketing  |  50000.00 |        1 |
+------------+-----------+----------+
4 rows in set (0.07 sec)

mysql> select department,count(*) as total_employee from employee group by department having count(*)>1;
Empty set (0.02 sec)

mysql> select department,count(*) as total_employee from employee group by department having count(*)>0;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| IT         |              1 |
| HR         |              1 |
| Sales      |              1 |
| Marketing  |              1 |
+------------+----------------+
4 rows in set (0.00 sec)

mysql> select department,count(*) as total_employee from employee group by department having count(*)>2;
Empty set (0.00 sec)

mysql> select department,sum(salary) as total_salary from employee group by department having sum(salary)>5000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |    100000.00 |
| HR         |     50000.00 |
| Sales      |    642302.00 |
| Marketing  |     50000.00 |
+------------+--------------+
4 rows in set (0.01 sec)

mysql> select department,sum(salary) from employee group by department having sum(salary)>50000;
+------------+-------------+
| department | sum(salary) |
+------------+-------------+
| IT         |   100000.00 |
| Sales      |   642302.00 |
+------------+-------------+
2 rows in set (0.00 sec)

mysql> select department, avg(salary) from employee group by department having avg(salary)> 50000;
+------------+---------------+
| department | avg(salary)   |
+------------+---------------+
| IT         | 100000.000000 |
| Sales      | 642302.000000 |
+------------+---------------+
2 rows in set (0.08 sec)

mysql>