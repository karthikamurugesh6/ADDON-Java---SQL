mysql> create table Emp;
ERROR 1046 (3D000): No database selected
mysql> create database kgcas;
Query OK, 1 row affected (0.01 sec)

mysql> use kgcas;
Database changed
mysql> DROP TABLE IF EXISTS emp;
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql>
mysql> CREATE TABLE emp (
    ->   empno decimal(4,0) NOT NULL,
    ->   ename varchar(10) default NULL,
    ->   job varchar(9) default NULL,
    ->   mgr decimal(4,0) default NULL,
    ->   hiredate date default NULL,
    ->   sal decimal(7,2) default NULL,
    ->   comm decimal(7,2) default NULL,
    ->   deptno decimal(2,0) default NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DROP TABLE IF EXISTS dept;
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql>
mysql> CREATE TABLE dept (
    ->   deptno decimal(2,0) default NULL,
    ->   dname varchar(14) default NULL,
    ->   loc varchar(13) default NULL
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('30','SALES','CHICAGO');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');
Query OK, 1 row affected (0.00 sec)

mysql> select* from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select *
    -> from emp
    -> where sal >=2000;
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select ename , sal , sal*12
    -> from emp
    -> where sal*12 >=12000
    ->
    -> select ename , sal , sal*12
    -> from emp
    -> where sal*12 >=12000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select ename , sal , sal*12
from emp
where sal*12 >=12000' at line 5
mysql> select ename , sal , sal*12
    -> from emp
    -> where sal*12 >=12000;
+--------+---------+----------+
| ename  | sal     | sal*12   |
+--------+---------+----------+
| ALLEN  | 1600.00 | 19200.00 |
| WARD   | 1250.00 | 15000.00 |
| JONES  | 2975.00 | 35700.00 |
| MARTIN | 1250.00 | 15000.00 |
| BLAKE  | 2850.00 | 34200.00 |
| CLARK  | 2450.00 | 29400.00 |
| SCOTT  | 3000.00 | 36000.00 |
| KING   | 5000.00 | 60000.00 |
| TURNER | 1500.00 | 18000.00 |
| ADAMS  | 1100.00 | 13200.00 |
| FORD   | 3000.00 | 36000.00 |
| MILLER | 1300.00 | 15600.00 |
+--------+---------+----------+
12 rows in set (0.00 sec)

mysql> select ename , job
    -> from emp
    -> where job = 'clerk';
+--------+-------+
| ename  | job   |
+--------+-------+
| SMITH  | CLERK |
| ADAMS  | CLERK |
| JAMES  | CLERK |
| MILLER | CLERK |
+--------+-------+
4 rows in set (0.00 sec)

mysql> select *
    -> from emp
    -> where sal>=2000
    -> where sal>=2000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where sal>=2000' at line 4
mysql> select *
    -> from emp
    -> where sal>=2000;
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select *
    -> from emp
    -> where deptno =30 or job=analyst
    ->
    -> select *
    -> from emp
    -> where deptno =30 or job=analyst;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select *
from emp
where deptno =30 or job=analyst' at line 5
mysql> select *
    -> from emp
    -> where deptno =30 or job=analyst;
ERROR 1054 (42S22): Unknown column 'analyst' in 'where clause'
mysql> select *
    -> from emp
    -> where deptno =30 or job='ANALYST';
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
8 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where job='clerk' and sal<1500;
+-------+--------+-------+------+------------+---------+------+--------+
| empno | ename  | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-------+------+------------+---------+------+--------+
4 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like  'a%';
+-------+
| ename |
+-------+
| ALLEN |
| ADAMS |
+-------+
2 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like  'a%n';
+-------+
| ename |
+-------+
| ALLEN |
+-------+
1 row in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like  'a%h';
Empty set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like  '%H';
+-------+
| ename |
+-------+
| SMITH |
+-------+
1 row in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like 'A___N';
+-------+
| ename |
+-------+
| ALLEN |
+-------+
1 row in set (0.00 sec)

mysql> select ename , sal
    -> from emp
    -> where sal like '___.__';
+-------+--------+
| ename | sal    |
+-------+--------+
| SMITH | 800.00 |
| JAMES | 950.00 |
+-------+--------+
2 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where deptno =20 or deptno=30;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where deptno =20 or deptno=30 or deptno=30 or deptno=40;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where deptno =20 or deptno=30 or deptno=30 or deptno=40;
+--------+
| ename  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| SCOTT  |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
+--------+
11 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where deptno in (10,20,30,40);
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where deptno in (10,20,30,40);
+--------+
| ename  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
14 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where not in(10 or 30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'in(10 or 30)' at line 3
mysql> select*
    ->
    -> from emp
    -> where deptno not in(10 or 30);
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where deptno not in (10,30);
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
5 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where  job=(ANALYST,MANAGER);
ERROR 1054 (42S22): Unknown column 'ANALYST' in 'where clause'
mysql> select*
    -> sal*12 as annual salary
    -> from emp
    -> where job not in('ANALYST','MANAGER');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sal*12 as annual salary
from emp
where job not in('ANALYST','MANAGER')' at line 2
mysql> select*,sal*12 as Annual Salary
    -> from emp
    -> where job not in('ANALYST','MANAGER');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Salary
from emp
where job not in('ANALYST','MANAGER')' at line 1
mysql> select*,sal*12 as annual_salary
    -> from emp
    -> where job not in('ANALYST','MANAGER');
+-------+--------+-----------+------+------------+---------+---------+--------+---------------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno | annual_salary |
+-------+--------+-----------+------+------------+---------+---------+--------+---------------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |       9600.00 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |      19200.00 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |      15000.00 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |      15000.00 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |      60000.00 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |      18000.00 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |      13200.00 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |      11400.00 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |      15600.00 |
+-------+--------+-----------+------+------------+---------+---------+--------+---------------+
9 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where hiredate (+81,-87);
ERROR 1305 (42000): FUNCTION kgcas.hiredate does not exist
mysql> select ename
    -> from emp
    -> where hiredate(+81 AND -87);
ERROR 1305 (42000): FUNCTION kgcas.hiredate does not exist
mysql> select ename
    -> from emp
    -> where hiredate >DATE('1980-12-31') and hiredate<DATE ('1988-01-01');
+--------+
| ename  |
+--------+
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
13 rows in set (0.00 sec)

mysql> select ename,hiredate
    -> from emp
    -> where hiredate >DATE('1980-12-31') and hiredate<DATE ('1988-01-01');
+--------+------------+
| ename  | hiredate   |
+--------+------------+
| ALLEN  | 1981-02-20 |
| WARD   | 1981-02-22 |
| JONES  | 1981-04-02 |
| MARTIN | 1981-09-28 |
| BLAKE  | 1981-05-01 |
| CLARK  | 1981-06-09 |
| SCOTT  | 1982-12-09 |
| KING   | 1981-11-17 |
| TURNER | 1981-09-08 |
| ADAMS  | 1983-01-12 |
| JAMES  | 1981-12-03 |
| FORD   | 1981-12-03 |
| MILLER | 1982-01-23 |
+--------+------------+
13 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where hiredate >DATE('1981-12-31') and hiredate<DATE ('1987-01-01');
+--------+
| ename  |
+--------+
| SCOTT  |
| ADAMS  |
| MILLER |
+--------+
3 rows in set (0.00 sec)

mysql> select ename,hiredate
    -> from emp
    -> where hiredate >DATE('1981-12-31') and hiredate<DATE ('1987-01-01');
+--------+------------+
| ename  | hiredate   |
+--------+------------+
| SCOTT  | 1982-12-09 |
| ADAMS  | 1983-01-12 |
| MILLER | 1982-01-23 |
+--------+------------+
3 rows in set (0.00 sec)
