CREATE TABLE kannadakdangadi(id int primary key,shop_name varchar(30)unique,shop_owner varchar(20)unique,shop_ownerwife varchar(20)unique,place varchar(20)unique,
Shop_no int unique,waranty boolean,online_payment boolean,talluk varchar(20)unique,district varchar(20)unique,
customer_name varchar(20)unique,customer_id varchar(20)unique,cust_place varchar(20),cust_phone bigint,cust_Qualification varchar(20),
type_of_glass varchar(20),type_of_frame varchar(20),cust_profession varchar(20),cust_age int,mode_of_payment varchar(20));
SELECT*FROM kannadakdangadi;

DROP table kannadakdangadi;
INSERT INTO kannadakdangadi VALUES(1,'Lenskart','Nick','Priyanka','Rajajinagar',101,true,true,'Banglore','Banglore','Saif','Saif01','Malleshwaram',8277738399,'BE-EEE','Convex','Plastic','Software',35,'Online');
INSERT INTO kannadakdangadi VALUES(2,'Gopi Opticals','Gopi','sita','GopiCircle',102,false,true,'Badravati','Shivamogga','Ukshit','Uk01','Uchhila',918238774,'BE-Mech','Concave','Fibre','Maintainance',26,'Debit');
INSERT INTO kannadakdangadi VALUES(3,'Benaka Opticals','Krishna','Rukmini','Sampekatte',103,false,false,'Hosanagara','Sagara','Radhe','Rad2','Nagodi',08185253658,'BE-aero','Convex','Fibre','Wiring',29,'Cash');
INSERT INTO kannadakdangadi VALUES(4,'Master Opticals','Ashoka','Yashodha','Sampigemane',104,true,false,'Seegehalli','Yellapur','Yashodha','Yash04','Nittur',9481064199,'TCH','Convex','Lens','Teacher',39,'Credit');
INSERT INTO kannadakdangadi VALUES(5,'Krishna Opticals','Rama','Seeta','RamNagar',105,false,true,'Sugavi','Sirsi','Madhu','Madh06','Agali',9449685847,'MBA','Concave','Metal','Banking',28,'Online');
INSERT INTO kannadakdangadi VALUES(6,'Prakash Opticals','Prakash','Sangetha','Shastri park',106,true,false,'Kundapur','Udupi','Manjunath','Manj07','Shiroor',9382107530,'Diploma','Concave','Fibre','Metalworkz',26,'Cash');
INSERT INTO kannadakdangadi VALUES(7,'Ganiga Opticals','Nandakumar','Ramya','Byndoor',107,true,false,'Honnavara','Uttar Kannada','Nagaraju','Nagu06','Mandya',080376542,'MA-Kannada','Concave','Metal','Principal',69,'Online');
INSERT INTO kannadakdangadi VALUES(8,'Ambika Opticals','Vinay','Usha','Gaddadavaraamne',108,false,false,'Sorabha','Banavasi','Siri','Siri04','Mathikai',08185253646,'X standard','Convex','Lens','student',16,'Cash');
INSERT INTO kannadakdangadi VALUES(9,'Sunka Optical Stores','Surya','Sumathi','Champakapura',109,false,true,'Udupi','Manglore','Vasudeva','vasu89','Adamaru',0802056,'PUC','Concave','Metal','Clerk',67,'Cash');
INSERT INTO kannadakdangadi VALUES(10,'Knnadakadangadi','Sathya','Kasthoori','Jayanagara',110,true,false,'Shikharipura','Shimogaa','Yaduiyurappa','Yadi07','Yadiyoor',108632638,'X standard','Concave','Carban Fibre','Chief Minister',77,'Loan');
SELECT*FROM kannadakdangadi;

/* and */
SELECT * FROM kannadakdangadi WHERE shop_name='Lenskart'  AND slno=1;
SELECT shop_Owner FROM kannadakdangadi WHERE shop_name='Krishna Opticals'  AND place="RamNagar";
/* or */
SELECT shop_wwner FROM kannadakdangadi WHERE shop_name='Ambika Opticals'  or location="shimoga";
SELECT Shop_Owner FROM kannadakdangadi WHERE shop_name='Sunka Optical Stores'  or location="davangere";
SELECT * FROM kannadakdangadi WHERE shop_name='Ganiga Opticals' or location="Gadadavaramane";
/* in */
SELECT * FROM kannadakdangadi WHERE id in(1,2,4,8);
/* not in */
SELECT * FROM kannadakdangadi WHERE id not in(1,2,4,5);
/* between */
SELECT * FROM kannadakdangadi WHERE id between 5 and 8;
/* order by */
SELECT * FROM kannadakdangadi order by id asc;
SELECT * FROM kannadakdangadi order by id desc;
/* sum */
SELECT SUM(cust_age) FROM kannadakdangadi;
/* count */
SELECT count(cust_age) FROM kannadakdangadi;
/* max */
SELECT max(cust_age) FROM kannadakdangadi;
/*min*/
SELECT min(cust_age) FROM kannadakdangadi;
/* avg */
SELECT avg(cust_age) FROM kannadakdangadi;
/* group by */
SELECT id,shop_name,cust_Qualification, sum(cust_age) from kannadakdangadi GROUP BY shop_name;
/* having */
SELECT id,shop_name,customer_id, sum(cust_age) from kannadakdangadi GROUP BY shop_name HAVING type_of_frame="Fibre";


/* add new column */
ALTER TABLE kannadakdangadi ADD COLUMN mobileno bigint;
/* reaname column name */
ALTER TABLE kannadakdangadi RENAME COLUMN mobileno to Pho_no;
/* changeing datatype for exixting table */
ALTER TABLE kannadakdangadi MODIFY COLUMN Pho_no int;
/* inner join */
SELECT kannadakdangadi.id as kannadakdangadi,Movie_Details.id as Person_Data FROM  kannadakdangadi inner join Movie_Details  on kannadakdangadi.id=Person_Data.id;
/*left join */
SELECT kannadakdangadi.slno as kannadakdangadi,Movie_Details.id as Person_Data FROM  kannadakdangadi left join Movie_Details  on kannadakdangadi.slno=Person_Data.slno;
/* right join */
SELECT kannadakdangadi.slno as kannadakdangadi,Movie_Details.id as Person_Data FROM  kannadakdangadi right join Movie_Details  on kannadakdangadi.slno=Person_Data.slno;
/*cross join */
select kannadakdangadi.Shop_name ,Movie_Details.Shop_name from kannadakdangadi,Person_Data;
/*subquries */
SELECT talluk FROM kannadakdangadi WHERE Shop_name=(SELECT Shop_name FROM Movie_Details WHERE id=2);
/* views:  */
CREATE view newdata as Select a.id,a.Shop_name,b.Person_name from kannadakdangadi as a,Movie_Details as b;
select * from newdata;
drop view newdata;
/*Left remove:: remove leading space*/
SELECT LTRIM(shop_name) FROM kannadakdangadi;
/* Rightremove:: remove trailing space*/
SELECT RTRIM(shop_name) FROM kannadakdangadi;
/*reverse*/
select reverse(place) from kannadakdangadi;
/*lpad*/
select lpad(talluk,10,"(**)") from kannadakdangadi;
/*rpad*/
select rpad(place,10,"@@") from kannadakdangadi;
/*like*/
SELECT * FROM kannadakdangadi where Shop_name like 's%';
SELECT * FROM kannadakdangadi where Shop_name like '%a%';
SELECT * FROM kannadakdangadi where Shop_name like '%s';
SELECT * FROM kannadakdangadi order by id asc limit 5;/* it will fetch first 5 rows */
SELECT * FROM kannadakdangadi order by id desc limit 5;/* it will fetch last 5rows */
/* GREATEST :*/
SELECT GREATEST(23,34,56,76,54,32,23);
/* DTAEDIFF */
SELECT datediff('2022-11-22','2001-05-11');




CREATE TABLE Movie_Details(id int,movie_name varchar(30)unique,movie_hero varchar(20)unique,movie_heroin varchar(20)unique,
director varchar(20)unique,no_of_Songs int unique,pan_India boolean,family_pack boolean,movie_lang varchar(20),coreography varchar(20),
villan_name varchar(20)unique,movie_comedian varchar(20)unique,shoot_location varchar(20),budget bigint,no_of_theater varchar(20),
ticket_price int, talkies_name varchar(20),cust_age int,cust_type varchar(20),mode_of_payment varchar(20)references kannadakdangadi(id));
drop table Movie_Details;

INSERT INTO Movie_Details VALUES(1,'Krack','RaviTeja','Shruthi Hasan','Gopi',5,true,true,'Telugu','Kamara','Kathari','Arun','Karnool',51000000,'893','150','Radhika','22','Student','Cash');
INSERT INTO Movie_Details VALUES(2,'Kantara','Rishab Shetty','Leeela','Rishab',6,true,true,'Kannada','Chandan','Achyuth Kumar','Bulla','Keradi',1500000,'653','120','Navarang','35','Student','Online');
INSERT INTO Movie_Details VALUES(3,'Om','Shivaraj Kumar','Prema','Upendra',4,false,true,'Kannada','Venu Gopal','Bachhan','Sannanna','Nanjanagoodu',563086,'189','80','Veerabhadreshwra','28','Tea Stall','cash');
INSERT INTO Movie_Details VALUES(4,'Jogi','Shivanna','Jeni','Prem',7,false,true,'Kannada','Ganesh','Doddanna','Sadhu Gokila','Blore',8000405,'684','120','Narthaki','28','Student','Online');
INSERT INTO Movie_Details VALUES(5,'Mavuli','Ritesh','Jenelia','Ramesh Bhat',3,false,true,'Marathi','Fazlam','Ramesh','Jani Liver','Lathoor',25000000,'787','180','Amar ','26','Chai wala','Paytm');
INSERT INTO Movie_Details VALUES(6,'Bahubali','Prabhas','Anushka Shetty','RajMouli',8,true,true,'Telugu','Vatsa','Kattappa','Rona','Hydrabad',500006863,'6887','250','Laxmi','45','Lecturer','Cash');
INSERT INTO Movie_Details VALUES(7,'Vikranth Rona','Sudeep','Shreeeeela','Bhandari',9,true,true,'Kannada','Bharath','Sai Kumar','Mummuti','Manglore',8996533,'985','220','Alankar','29','Working proffes','Credit');
INSERT INTO Movie_Details VALUES(8,'Kirik Party','Rakshit Shetty','Rashmika','om',17,true,true,'Kannada','Chandan Achar','Musthafa','Pramodh Shetty','Hasan',80000,'793','189','Garuda','22','Colg Friends','Online');
INSERT INTO Movie_Details VALUES(9,'Charlie','Dalquer Salman','Parvathi Menon','Nivin ',11,false,true,'Malayalam','Fahad','Bhim Sen','Nithya','Wayanad',7890863,'135','120','Malayii','35','Workers','Cash');
INSERT INTO Movie_Details VALUES(10,'Vikram','Surya','null','kamal Hasan',12,true,true,'Tamil','TamilHero','Kmal','Kulla','Chennai',78936534,'895','275','Annamala','40','Rowdies','Cash');

/* add new column */
ALTER TABLE Movie_Details ADD COLUMN mobileno bigint;
/* reaname column name */
ALTER TABLE Movie_Details RENAME COLUMN mobileno to Pho_no;
/* changeing datatype for exixting table */
ALTER TABLE Movie_Details MODIFY COLUMN Pho_no int;
/* inner join */
SELECT kannadakdangadi.slno as kannadakdangadi,Movie_Details.slno as Movie_Details FROM  kannadakdangadi inner join Movie_Details  on kannadakdangadi.id=Movie_Details.id;
/*left join */
SELECT kannadakdangadi.slno as kannadakdangadi,Movie_Details.slno as Person_Data FROM  kannadakdangadi left join Movie_Details  on kannadakdangadi.id=Movie_Details.id;
/* right join */
SELECT kannadakdangadi.slno as kannadakdangadi,Movie_Details.slno as Person_Data FROM  kannadakdangadi right join Movie_Details  on kannadakdangadi.id=Movie_Details.id;
/*cross join */
select kannadakdangadi.Shop_name ,Person_Data.Shop_name from kannadakdangadi,Movie_Details;
/*subquries */
SELECT name FROM kannadakdangadi WHERE Shop_name=(SELECT Shop_name FROM Person_Data WHERE id=2);
/* views:  */
CREATE view newdata as Select a.id,a.shop_name,b.cust_name from kannadakdangadi as a,Movie_Details as b;
select * from newdata;
drop view newdata;
/*Left remove:: remove leading space*/
SELECT LTRIM(director) FROM Movie_Details;
/* Rightremove:: remove trailing space*/
SELECT RTRIM(director) FROM Movie_Details;
/*reverse*/
select reverse(movie_name) from Movie_Details;
/*lpad*/
select lpad(movie_heroin,10,"(**)") from Movie_Details;
/*rpad*/
select rpad(villan_name,10,"@@") from Movie_Details;
/*like*/
SELECT * FROM Movie_Details where movie_hero like 's%';
SELECT * FROM Movie_Details where movie_hero like '%a%';
SELECT * FROM Movie_Details where movie_hero like '%s';
SELECT * FROM Movie_Details order by id asc limit 5;/* it will fetch first 5 rows */
SELECT * FROM Movie_Details order by id desc limit 5;/* it will fetch last 5rows */
/* GREATEST :*/
SELECT GREATEST(23,34,56,76,54,32,23);
/* DTAEDIFF */
SELECT datediff('2022-11-22','2001-05-11');
/* Dayname */
SELECT dayname('2022-11-22');

SELECT date('2022-11-22');

SELECT dayofyear('2022-11-22');

SELECT makedate(2022,13);



select upper(director) from Movie_Details;
select lower(director) from Movie_Details;
SELECT*FROM Movie_Details;




