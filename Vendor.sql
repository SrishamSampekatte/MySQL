CREATE DATABASE vendor;
USE vendor;
CREATE TABLE vendor(id int not null,shop_name varchar(20)unique,vend_name varchar(20),
vend_id varchar(20)primary key,vend_place varchar(15)unique,gst_no varchar(15)unique,talluk varchar(15)unique,district varchar(15)unique,
state varchar(15)unique,phone_no int not null unique);

INSERT INTO vendor VALUES(1,'Master Agencies','B G M ','BGM1','Sampekatte','BGMGST1','Hosanagara','Shivamogga','Karnataka',827738399);
INSERT INTO vendor VALUES(2,'Nandini Parlor','S L M ','SLM1','Nittur','SLMGST1','SAGARA','Panagi','Goa',948106419);
INSERT INTO vendor VALUES(3,'Flipkart','F L K ','FLK1','Kollur','FLKGST1','Kundapur','Udupi','Kerala',94487221);
INSERT INTO vendor VALUES(4,'Condiment','C R ','CR1','Hosangadi','CRGST1','Udupi','Kundapur','TamilNadu',944968584);
INSERT INTO vendor VALUES(5,'Amazon','A N R ','ANR1','Sugavi','ANRGST1','Sirsi','Uttar Kannada','Maharashtra',94815357);
INSERT INTO vendor VALUES(6,'OLX','O L X ','OLX1','Banavasi','OLXGST1','Siddapur','U K ','Andra Pradesh',948095469);
INSERT INTO vendor VALUES(7,'Birla Cement ','B C  ','BC1','jodpur','BCGST1','Sorabha','Gulbarga','Telangana',89796959);
INSERT INTO vendor VALUES(8,'Ambuja','AC  ','AC1','Athani','ACGST1','Sindi','Belagavi','Assam',94810506);
INSERT INTO vendor VALUES(9,'Shimul','S H M  ','SHM1','Bendre','SHMGST1','Savadatti','Dharvad','Bihar',123456);
INSERT INTO vendor VALUES(10,'Dinsi','PK ','PK1','Nagara','PKGST1','Rippanpete','Haveri','West BEngal',1234567);
SELECT * FROM vendor ORDER BY id ;


CREATE TABLE customers (id int not null,c_name varchar (20)unique,vend_id varchar(20),payment varchar (30),foreign key(vend_id)references vendor (vend_id));
INSERT INTO  customers VALUES(1,'Srisham','BGM1','CASH');
INSERT INTO  customers VALUES(2,'Varun','SLM1','UPI');
INSERT INTO  customers VALUES(3,'Srisha','FLK1','online');
INSERT INTO  customers VALUES(4,'S L S ','CR1','google pay');
INSERT INTO  customers VALUES(5,'Atri','ANR1','PHONEPAY');
INSERT INTO  customers VALUES(6,'Lacha','OLX1','Amazon Pay');
INSERT INTO  customers VALUES(7,'Prakash','BC1','whatsapp pay');
INSERT INTO  customers VALUES(8,'Ganpi','AC1','Credit');
INSERT INTO  customers VALUES(9,'Ashu','SHM1','DEBIT CARD');
INSERT INTO  customers VALUES(10,'hARI','PK1','CASH');
SELECT *FROM vendor;
SELECT *FROM customers;