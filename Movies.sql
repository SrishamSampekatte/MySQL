/* DML(Data Manipulation Language):
		These are used to maintain and  manage the data inside the table 
		
		1)insert : used to insert the data into the table
		2.update:it is used to modify or update the dayta inside the table.
		2. delete: Delete the data from the table.
		3.select: Fetch the data from the table */
        
CREATE TABLE movies(id int,movie_name varchar(30),ticket_price int ,location varchar(20),hero varchar(20),Budget bigint);
select *FROM movies;
INSERT INTO movies values (1,'Kantara','200','Navarang','Rishab Shetty','500');
INSERT INTO movies values(2,'K G F','300','PVR','YASH','1200');
INSERT INTO movies values(3,'Charlie777','250','orion mall','Rakshith Shetty','750');
INSERT INTO movies values(4,'Mungarumalr','150','mantri mall','ganesh','250');

ALTER TABLE movies ADD COLUMN director varchar(20) default 'Shubham';
select *FROM movies;

/* DML: SYNTAX for update
UPDATE table_name SET column_name ='value' WHERE condition*/

UPDATE movies SET director ='Ram' WHERE id=1;
select * from movies;