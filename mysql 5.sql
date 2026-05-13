mysql> create database joins;
Query OK, 1 row affected (0.10 sec)

mysql> use joins;
Database changed

mysql> create table department(dept_id int primary key not null,dept_name varchar(30) not null);
Query OK, 0 rows affected (0.16 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.03 sec)

mysql> insert into department values(1,'HR'), (2,'IT'), (3,'Finance'),(4,'Marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from dapartment;
ERROR 1146 (42S02): Table 'joins.dapartment' doesn't exist
mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finance   |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)
mysql> CREATE TABLE employee (
    ->     emp_id INT PRIMARY KEY NOT NULL,
    ->     emp_name VARCHAR(20) NOT NULL,
    ->     dept_id INT,
    ->     FOREIGN KEY (dept_id) REFERENCES department(dept_id)
    -> );
Query OK, 0 rows affected (0.14 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| dept_id  | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> insert into employee values(1,'Sujal',1),(2,'Ajay',2),(3,'Sahil',3),(4,'Sanju',4);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finance   |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> select * from employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | Sujal    |       1 |
|      2 | Ajay     |       2 |
|      3 | Sahil    |       3 |
|      4 | Sanju    |       4 |
+--------+----------+---------+
4 rows in set (0.01 sec)

mysql> select emp_name, dept_name from employee inner join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Sujal    | HR        |
| Ajay     | IT        |
| Sahil    | Finance   |
| Sanju    | Marketing |
+----------+-----------+
4 rows in set (0.05 sec)

mysql> select emp_name, dept_name from employee inner join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Sujal    | HR        |
| Ajay     | IT        |
| Sahil    | Finance   |
| Sanju    | Marketing |
+----------+-----------+
4 rows in set (0.02 sec)

mysql> select emp_name, dept_name from employee right join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Sujal    | HR        |
| Ajay     | IT        |
| Sahil    | Finance   |
| Sanju    | Marketing |
+----------+-----------+
4 rows in set (0.01 sec)

mysql> select emp_name,dept_name from employee full join department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Sanju    | HR        |
| Sahil    | HR        |
| Ajay     | HR        |
| Sujal    | HR        |
| Sanju    | IT        |
| Sahil    | IT        |
| Ajay     | IT        |
| Sujal    | IT        |
| Sanju    | Finance   |
| Sahil    | Finance   |
| Ajay     | Finance   |
| Sujal    | Finance   |
| Sanju    | Marketing |
| Sahil    | Marketing |
| Ajay     | Marketing |
| Sujal    | Marketing |
+----------+-----------+
16 rows in set, 1 warning (0.02 sec)

mysql>  create table employee(emp_id int primary key not null, name varchar(20) not null, dept varchar(20) not null,salary int);
Query OK, 0 rows affected (0.14 sec)

mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| emp_id | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| dept   | varchar(20) | NO   |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

mysql> insert into employee values(1,'Tanishq','IT',45000);
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee;
+--------+---------+------+--------+
| emp_id | name    | dept | salary |
+--------+---------+------+--------+
|      1 | Tanishq | IT   |  45000 |
+--------+---------+------+--------+
1 row in set (0.01 sec)

mysql> delimiter //
mysql> create procedure GetDemo()
    -> begin
    -> select * from employee;
    -> end//
Query OK, 0 rows affected (0.15 sec)

mysql> call GetDemo();
    ->
    -> call GetDemo();
    -> call GetDemo();
    -> end//
+--------+---------+------+--------+
| emp_id | name    | dept | salary |
+--------+---------+------+--------+
|      1 | Tanishq | IT   |  45000 |
+--------+---------+------+--------+
1 row in set (0.10 sec)

Query OK, 0 rows affected (0.11 sec)

+--------+---------+------+--------+
| emp_id | name    | dept | salary |
+--------+---------+------+--------+
|      1 | Tanishq | IT   |  45000 |
+--------+---------+------+--------+
1 row in set (0.11 sec)

Query OK, 0 rows affected (0.11 sec)

+--------+---------+------+--------+
| emp_id | name    | dept | salary |
+--------+---------+------+--------+
|      1 | Tanishq | IT   |  45000 |
+--------+---------+------+--------+
1 row in set (0.11 sec)

Query OK, 0 rows affected (0.11 sec)

end//
end//
end//' at line 1
mysql> delimiter ;
mysql> call GetDemo();
+--------+---------+------+--------+
| emp_id | name    | dept | salary |
+--------+---------+------+--------+
|      1 | Tanishq | IT   |  45000 |
+--------+---------+------+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)
begin
select * from employee where department = dept_name;
end' at line 1
mysql> delimiter //
mysql> create procedure GetEmployee(IN dept_name varchar(50))
    -> begin
    -> select * from employee where department = dept_name;
    -> end//
Query OK, 0 rows affected (0.28 sec)
select * from employee where dept = name;
end' at line 1
mysql> delimiter // 
No query specified

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE GetEmployeeByDept2(IN dept VARCHAR(50))
    -> BEGIN
    ->     SELECT * 
    ->     FROM Employee
    ->     WHERE department = dept;
    -> END //
Query OK, 0 rows affected (0.003 sec)

mysql> 
mysql> DELIMITER ;
mysql> 
mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE GetEmployeeByDept3(IN dept VARCHAR(50))
    -> BEGIN
    ->     SELECT * 
    ->     FROM Employee
    ->     WHERE dept = name;
    -> END //
Query OK, 0 rows affected (0.006 sec)

mysql> 
mysql> DELIMITER ;
mysql> call GetEmployeeByDept3('IT');
Empty set (0.003 sec)

Query OK, 0 rows affected (0.003 sec)

mysql> call GetEmployeeByDept3('HR');
Empty set (0.001 sec)

Query OK, 0 rows affected (0.001 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE GetEmployeeByDept4(IN name VARCHAR(50))
    -> BEGIN
    ->     SELECT * 
    ->     FROM Employee
    ->     WHERE dept = name;
    -> END //
Query OK, 0 rows affected (0.008 sec)

mysql> 
mysql> DELIMITER ;
mysql> call GetEmployeeByDept4('HR');
+----+--------+------+--------+
| id | name   | dept | salary |
+----+--------+------+--------+
|  1 | Mannan | HR   |  10000 |
+----+--------+------+--------+
1 row in set (0.003 sec)

Query OK, 0 rows affected (0.003 sec)

mysql> call GetEmployeeByDept4('IT');
Empty set (0.001 sec)

Query OK, 0 rows affected (0.001 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN  id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, dept, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.005 sec)

mysql> DELIMITER ;
mysql> call AddEmployee(2,'Khan','IT',12000);
Query OK, 1 row affected (0.005 sec)

mysql> select * from employee;
+----+--------+------+--------+
| id | name   | dept | salary |
+----+--------+------+--------+
|  1 | Mannan | HR   |  10000 |
|  2 | Khan   | IT   |  12000 |
+----+--------+------+--------+
2 rows in set (0.001 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE GetEmployeeCount(OUT total INT)
    -> BEGIN
    ->     SELECT COUNT(*) INTO total
    ->     FROM Employee;
    -> END //
Query OK, 0 rows affected (0.004 sec)

mysql> 
mysql> DELIMITER ;
mysql> 
mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.006 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      2 |
+--------+
1 row in set (0.000 sec)

mysql> 
