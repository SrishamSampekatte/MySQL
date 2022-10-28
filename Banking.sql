CREATE DATABASE banking ;
USE banking;
CREATE TABLE banking (id int primary key,bank_id int primary key,bank_name varchar (30)unique ,balance bigint ,
GSTno varchar(20) unique,location varchar(40),manager varchar(30),no_of_employe int not null,
bank_type varchar(10),main_branch varchar(20),check (balance>=100000));

INSERT INTO banking values(1,'101','Karnataka Bank',20000000,'abc1','Mathimane','Subramanya',3,'Private','Manglore');
INSERT INTO banking values(2,'102','Karnataka Krishna Bank',3506405,'abc2','Sampekatte','Giridhar',5,'Govt','Shimoga');
INSERT INTO banking values(3,'103','Canara Bank',4509868,'abc3','Nittur','Manjunath',7,'Govt','Manglore');
INSERT INTO banking values(4,'104','SBI',154687588,'abc4','Hosanagara','State bank manager',13,'Govt','Main Branch');
INSERT INTO banking values(5,'105','BOB',4528964,'abc5','Sagar','Bob Manager',6,'pubic','Baraoda');
INSERT INTO banking values(6,'106','HDFC',14578985,'abc6','Rajajinagar','Raj',12,'Private','Banglore');
INSERT INTO banking values(7,'107','Axis',12458879,'abc7','Marathalli','Axis manager',19,'Private','Delli');
INSERT INTO banking values(8,'108','ICICI',45789586,'abc8','Malleshwaram','icic manger',9,'Private','Hydrabad');
INSERT INTO banking values(9,'109','P N Bank',4569758,'abc9','Amruthsir','pN Manager',12,'Private','Punjab');
INSERT INTO banking values(10,'110','Andra Bank',245898554,'abc10','Agali','Andra AManager',6,'Govt','Telangana');

CREATE TABLE customers (id int not null,c_name varchar (20)unique,bank_id int,acc_type varchar (30),
foreign key(bank_id)references banking (bank_id));
INSERT INTO customers values(1,'Srisham',101,'Savings');
INSERT INTO customers values(2,'Sriram',102,'Zero');
INSERT INTO customers values(3,'Sridhar',103,'Savings');
INSERT INTO customers values(4,'Sridatta',104,'Savings');
INSERT INTO customers values(5,'Srikanta',105,'Public');
INSERT INTO customers values(6,'Sumanth',106,'Dmat');
INSERT INTO customers values(7,'    Madhu',107,'Savings');
INSERT INTO customers values(8,'Aravinda',108,'Zero');
INSERT INTO customers values(9,'Niranjan',109,'mutual');
INSERT INTO customers values(10,'  Adarsh',110,'Savings');



SELECT LENGTH ('Niranjan')from customers;
SELECT LTRIM ('Adarsh')from customers;
SELECT LTRIM ('Madhu')from customers;

SELECT * FROM banking;
SELECT *FROM customers;