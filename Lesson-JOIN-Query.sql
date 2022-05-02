
create database LessonJoin_db;

use LessonJoin_db
create table Customers (
	id int identity NOT NULL,
	fname nvarchar(40) NULL,
	age int NULL,
	address nvarchar(40) NULL,
	salary nvarchar(40) NULL,
);

INSERT INTO CUSTOMERS (fname, age, address, salary) VALUES 
 ('Mattew', 32, 'Ahmedabad', 2000),
 ('Ann', 25, 'Delhi', 1500 ),
 ('Elisa', 23, 'Kota', 2000 ),
 ('John', 25, 'Mumbai', 6500),
 ('Mike', 27, 'Bhopal', 8500),
 ('Baltimor', 22, 'MP', 4500);
insert into .dbo.department(fname, lname, number, location, grade, position) VALUES
('Mattew', 'Smith',  'DepName1', 'Arizona', 5, 'Programmer'),
('Ann', 'Jones', 'DepName1', 'Dallas', 3, 'Worker'),
('Elisa', 'James', 'DepName1', 'New York', 4, 'Teacher'),
('Elke', 'Betoni', 'DepName1', 'New York', 5, 'Teacher'),
('John', 'Moser', 'DepName1', 'Dallas', 5, 'Teacher'),
('Mike', 'Barrimore', 'DepName1', 'Dallas', 3, 'Programmer'),
('Baltimor', 'Smith', 'DepName1', 'Dallas', 4, 'Programmer');

-- �������� ��������� JOIN � T-SQL

-- ���� ��������� ���� �������� join � T-SQL:
-- 1. ������������� ����������
-- 2. ��������� ������������ ��� ������������ ����������
-- 3. ������� ����������
-- 4. ����-����������, �������������� � ��������������

-- ��� ���������� join ������������ ��������� �������� �����:
-- 1. CROSS JOIN - ���������� ��������� ������������ 2� ������
-- 2. [INNER] JOIN - ���������� ������������� ����������
-- 3. LEFT/RIGHT [OUTER] JOIN - ���������� ����������� �������� ����������
-- 4. FULL [OUTER] JOIN - ���������� ���������� ������� � ������ �������� ����������.


-- [1] ������������� ����������
-- ����� ����� - ����� ���������
select employeeTable.*, department.* 
	FROM employeeTable INNER JOIN department 
	ON employeeTable.dep_name = department.number

-- ������ ����� - ������� ���������
select employeeTable.*, department.* 
	FROM employeeTable, department 
	WHERE employeeTable.id = department.id


-- ������� ����������� ��� ���������� �� 2� ������: id, �����, ������ � ��������� (������ �������������)
-- syntax: 
-- SELECT table.column, table.column, table2.column
-- FROM table JOIN table2 ON table.column = table2.column 
-- WHERE table.column3 = 'test';

select employeeTable.id, employeeTable.fname, employeeTable.lname, department.grade, department.position, employeeTable.location
from department INNER JOIN employeeTable
ON .dbo.department.id = .dbo.employeeTable.id
where .dbo.department.position = 'Programmer'


-- [2] ���������� ����� ��� 2� ������
SELECT department.fname, department.position, employeeTable.location, Customers.age, Customers.address FROM department 
	JOIN employeeTable ON department.lname = employeeTable.lname
	JOIN Customers ON department.fname = Customers.fname
WHERE department.position = 'Programmer'
AND Customers.salary = 2000
						
						 




SELECT * from department
SELECT * from employeeTable
SELECT * from Customers