CREATE DATABASE state_info;
USE state_info;
CREATE TABLE state_info(id int,state_name varchar(20),state_capital varchar(20),population bigint,
GST bigint,total_district int,petrol_price int,literacy_rate int,no_of_MP int,no_of_MLA int);
INSERT INTO state_info VALUES(1,"KARNATAKA","BENGALURU",90000000,12789011,30,103.58,78,28,224);
INSERT INTO state_info VALUES(2,"KERALA","THIRUVANANTAPURAM",3000000,256488,14,101.58,85,16,95);
INSERT INTO state_info VALUES(3,"TAMILNADU","CHENNAI",45876975,5897542,36,106.58,65,38,305);
INSERT INTO state_info VALUES(4,"MAHARASHTRA","MUMBAI",1205648,45879586,45,107.78,60,45,291);
INSERT INTO state_info VALUES(5,"GOA","PANAJI",1068954,256485,8,95.58,72,8,78);
INSERT INTO state_info VALUES(6,"ANDRAPRADESH","HYDRABAD",1245687,784582,28,103.58,65,13,214);
INSERT INTO state_info VALUES(7,"TELANGANA","HYDRABAD",4587598,124587,18,103.58,58,18,185);
INSERT INTO state_info VALUES(8,"ASSAM","DISPUR",4569878,125468,14,108.58,57,17,114);
INSERT INTO state_info VALUES(9,"BIHAR","PATNA",897589,458798,457889,104,25,23,192);
INSERT INTO state_info VALUES(10,"GUJARAT","GANDHINAGAR",457895,9857485,32,103.26,63,26,202);
INSERT INTO state_info VALUES(11,"HARYANA","CHANDIGADH",2648598,1245875,26,105.58,70,24,202);
INSERT INTO state_info VALUES(12,"MADHYAPRADESH","BHOPAL",8597500,2545888,29,102.25,67,29,195);
INSERT INTO state_info VALUES(13,"MANIPUR","IMPHA",458578,124588,12,108.58,68,12,88);
INSERT INTO state_info VALUES(14,"MEGHALAYA","SHILLONG",1245787,457857,12,108,58,11,99);
INSERT INTO state_info VALUES(15,"NAGALAND","KOHIMA",1457858,14587,13,102,68,11,103);
INSERT INTO state_info VALUES(16,"HIMACHAL PRADESH","SHIMLA",214589,4578958,18,109.45,59,17,134);
INSERT INTO state_info VALUES(17,"RAJASTHAN","JAIPUR",124585,45789,26,107.25,45,24,185);
INSERT INTO state_info VALUES(18,"WESTBENGAL","KOLKATTA",358475869,4578545,41,101.58,67,38,291);
INSERT INTO state_info VALUES(19,"UTTAR PRADESH","LUCKNOW",197584858,45879598,69,106.58,56,69,424);
INSERT INTO state_info VALUES(20,"MIZORAM","AIZWAL",12455788,1245887,13,108,65,11,88);



SELECT *FROM state_info WHERE state_name ='KARNATAKA' AND id=1;
SELECT *FROM state_info WHERE population='90000000' AND id=2;
SELECT *FROM state_info WHERE petrol_price='107' AND id=19;
SELECT *FROM state_info WHERE no_of_MP='23' AND id=9;
SELECT *FROM state_info WHERE GST='45789' AND id=9;

SELECT * FROM state_info  WHERE GST='45876975' OR id=3;
SELECT * FROM state_info  WHERE petrol_price='107' OR id=6;
SELECT * FROM state_info  WHERE petrol_price='101' OR id=9;
SELECT * FROM state_info WHERE state_name="BIHAR" OR id=9;
SELECT * FROM state_info  WHERE total_district='69' OR id=1;

SELECT * FROM state_info where id in(1,2);
SELECT * FROM state_info where id in(4,5);
SELECT * FROM state_info where id in(8,10);
SELECT * FROM state_info where id in(11,4);
SELECT * FROM state_info where id in(1,4,6);


SELECT *FROM state_info where id not in(2);
SELECT *FROM state_info where id not in(2,6,4);
SELECT *FROM state_info where id not in(7,6,8);
SELECT *FROM state_info where id not in(1,8,9,17);
SELECT *FROM state_info where id not in(8,9,4);

SELECT * FROM state_info WHERE Sl_No between 1 and 5;
SELECT * FROM state_info WHERE Sl_No between  6 and 10;
SELECT * FROM state_info WHERE Sl_No between 11 and 15;
SELECT * FROM state_info WHERE Sl_No between 16 and 20;
SELECT * FROM state_info WHERE Sl_No between 1 and 20;

SELECT SUM(population)from state_info;
SELECT SUM(GST)from state_info;
SELECT SUM(total_district)from state_info;
SELECT SUM(petrol_price)from state_info;
SELECT SUM(no_of_MP)from state_info;
SELECT SUM(no_of_MLA)from state_info;

SELECT MIN(population)from state_info;
SELECT MIN(GST)from state_info;
SELECT MIN(total_district)from state_info;
SELECT MIN(petrol_price)from state_info;
SELECT MIN(no_of_MP)from state_info;
SELECT MIN(no_of_MLA)from state_info;
SELECT MIN(literacy_rate)from state_info;


SELECT MAX(population)from state_info;
SELECT MAX(GST)from state_info;
SELECT MAX(total_district)from state_info;
SELECT MAX(petrol_price)from state_info;
SELECT MAX(no_of_MP)from state_info;
SELECT MAX(no_of_MLA)from state_info;
SELECT MAX(literacy_rate)from state_info;

SELECT AVG(population)from state_info;
SELECT AVG(GST)from state_info;
SELECT AVG(total_district)from state_info;
SELECT AVG(petrol_price)from state_info;
SELECT AVG(no_of_MP)from state_info;
SELECT AVG(no_of_MLA)from state_info;
SELECT AVG(literacy_rate)from state_info;

SELECT * FROM state_info order by id; 
SELECT * FROM state_info WHERE state_capital LIKE  'G%';
SELECT state_capital from state_info WHERE state_capital  LIKE 'H%'; 

SELECT state_name FROM state_info WHERE state_name Like 'A%';   /* find name satrting with a*/
SELECT state_name FROM state_info WHERE state_name LIKE '%A';  /* find name ending with a*/

SELECT state_name FROM state_info WHERE state_name LIKE '%T%';

SELECT state_capital FROM state_info WHERE state_capital LIKE 'K%T%';

SELECT state_name FROM state_info WHERE state_name between 'A' AND 'M';

SELECT UPPER(state_name)FROM state_info;
SELECT LOWER(state_capital)FROM state_info;

SELECT CONCAT (state_name,population,petrol_price) as together from state_info;

SELECT INSTR('TAMILNADU','A') AS POSITION;
SELECT INSTR('KARNATAKA','K') AS POSITION;
SELECT INSTR('BENGALURU','U') AS POSITION;
SELECT INSTR('ASSAM','S') AS POSITION;
SELECT INSTR('PUNJAB','J') AS POSITION;
/* Syntax for substring 
SELECT SUBSTR (stringvalue,startingposition,noOfCharacters to print);    */
SELECT SUBSTR('KARNATAKA',4,4) AS SUBSTRING;
SELECT SUBSTR('TAMILNADU',3,6) AS SUBSTRING;
SELECT SUBSTR('ASSAM',3,5) AS SUBSTRING;

SELECT *FROM state_info;

CREATE TABLE t20worldcup(id int not null,team_name varchar(20)not null,opponent varchar(20),venue varchar(20),captain varchar(20));
INSERT INTO t20worldcup VALUES(1,'INDIA','PAKISTAN','MELBORNE','M S DHONI');
INSERT INTO t20worldcup VALUES(0,'SA','ZIMBABWE','SYDNY','HABIBI');
INSERT INTO t20worldcup (id,team_name,opponent,venue,captain) VALUES (2,'PAK','SRILANKA','SYDNY','BABAR');


SELECT *FROM t20worldcup;
desc t20worldcup;

CREATE TABLE T20worldcup2022(id int not null,team_name varchar(20)unique,opponent varchar(20),venue varchar(20),captain varchar(20));
INSERT INTO T20worldcup2022 VALUES(1,'INDIA','PAKISTAN','MELBORNE','M S DHONI');
INSERT INTO T20worldcup2022 VALUES(0,'SA','ZIMBABWE','SYDNY','HABIBI');
INSERT INTO T20worldcup2022 (id,team_name,opponent,venue,captain) VALUES (2,'PAK','SRILANKA','SYDNY','BABAR');
SELECT *FROM T20worldcup2022;

CREATE TABLE olympic(id int  not null,games_name varchar(15)unique,no_of_medals int unique,country varchar(30)unique,no_of_players int not null);
INSERT INTO olympic VALUES(1,'swimming',8,'USA',2);
INSERT INTO olympic VALUES ('two','cricket',8,'USA',2);
INSERT INTO olympic VALUES (2,'cricket',3,'INDIA',11);
INSERT INTO olympic VALUES (3,'rugby','5','AUS',2);
INSERT INTO olympic VALUES (4,'Basket Ball','6','America',45);
INSERT INTO olympic VALUES (5,'Basket Ball','6','America',45);



SELECT *FROM olympic;

CREATE TABLE serials (id int not null unique,name varchar  (20) unique,channels varchar(20),timimgs time,no_of_episodes int ,check (no_of_episodes>=1000));
INSERT INTO serials VALUES (1,'Agnisakshi','Colors Kannada',current_time(),1000);
INSERT INTO serials VALUES (4,'jotejoteyali','Zee kannada',current_time(),1036);

SELECT *FROM serials;
