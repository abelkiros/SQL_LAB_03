--BEFORE you can start---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mysql> CREATE DATABASE conman;
Query OK, 1 row affected (0.00 sec)

mysql> USE conman;
Database changed


mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| conman             |
| mysql              |
| performance_schema |
| sys                |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> USE conman;

Database changed
mysql> SHOW TABLES;

+------------------+
| Tables_in_conman |
+------------------+
| contact_info     |
+------------------+
1 row in set (0.00 sec)

mysql> DESCRIBE contact_info;
+-----------------------+--------------+------+-----+---------+-------+
| Field                 | Type         | Null | Key | Default | Extra |
+-----------------------+--------------+------+-----+---------+-------+
| contactID             | int(11)      | NO   | PRI | NULL    |       |
| firstname             | varchar(15)  | YES  |     | NULL    |       |
| middleinitial         | char(1)      | YES  |     | NULL    |       |
| lastname              | varchar(25)  | YES  |     | NULL    |       |
| suffix_description    | varchar(5)   | YES  |     | NULL    |       |
| title_description     | varchar(5)   | YES  |     | NULL    |       |
| jobtitle              | varchar(35)  | YES  |     | NULL    |       |
| department            | varchar(30)  | YES  |     | NULL    |       |
| email                 | varchar(40)  | YES  |     | NULL    |       |
| url                   | varchar(55)  | YES  |     | NULL    |       |
| IMaddress             | varchar(25)  | YES  |     | NULL    |       |
| phone_number          | varchar(20)  | YES  |     | NULL    |       |
| phonetype_description | varchar(8)   | YES  |     | NULL    |       |
| birthday              | date         | YES  |     | NULL    |       |
| notes                 | varchar(255) | YES  |     | NULL    |       |
| companyname           | varchar(35)  | YES  |     | NULL    |       |
| street1               | varchar(45)  | YES  |     | NULL    |       |
| street2               | varchar(45)  | YES  |     | NULL    |       |
| city                  | varchar(25)  | YES  |     | NULL    |       |
| state_province        | varchar(20)  | YES  |     | NULL    |       |
| zip_postalcode        | varchar(10)  | YES  |     | NULL    |       |
| country_region        | varchar(15)  | YES  |     | NULL    |       |
| company_url           | varchar(45)  | YES  |     | NULL    |       |
| company_phone         | varchar(12)  | YES  |     | NULL    |       |
+-----------------------+--------------+------+-----+---------+-------+
24 rows in set (0.00 sec)


mysql> \. /Users/Anbessa/Desktop/ISTE230/insertContact_Info.sql 
Query OK, 1 row affected (0.00 sec)

mysql> \. /Users/Anbessa/Desktop/ISTE230/createCONTACT_INFO.sql 
Query OK, 0 rows affected (0.00 sec)

--- TASK 1 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--- (president Destler's record)
mysql> INSERT INTO contact_info (contactID, firstname, middleinitial, lastname, suffix_description, title_description, jobtitle, department, email, url, IMaddress, phone_number, phonetype_description, birthday, notes, companyname, street1, street2, city, state_province, zip_postalcode, country_region, company_url, company_phone) 
VALUES (1, 'William','W','Destler', 'I', 'Dr.', 'President', 'Office of the President', 'destler@rit.edu', 'http://www.rit.edu/president/index.php', 'destler', '585-475-2396', 'work', '1946-08-26', 'Started as President of RIT on July 1, 2007.', 'Rochester Institute of Technology', '1 Lomb Memorial Drive', 'Building 1, 7th floor', 'Rochester', 'NY', '14623-5603', 'USA', 'www.rit.edu','585-475-6991');
Query OK, 1 row affected (0.00 sec)

---(RECORD 1)
mysql> INSERT INTO contact_info (contactID, firstname, middleinitial, lastname, suffix_description, title_description, jobtitle, department, email, url, IMaddress, phone_number, phonetype_description, birthday,notes, companyname, street1, street2, city, state_province, zip_postalcode, country_region, company_url, company_phone) 
VALUES (2, 'Eli', 'T', 'Wallowby', 'III.','Mr.','Director', 'Finance', 'etwallowby@concor.com', 'www.concor.com/~wallowby', 'etwallowby', '505-546-3322 ext. 23', 'work', '1956-03-26', 'All meetings must be scheduled through his assistant.','Concor International, Inc.', '152 North Main Street', 'NULL', 'Beverly Hills', 'CA', '90210-3715', 'USA', 'www.concor.com', '323-555-6115');
Query OK, 1 row affected (0.00 sec)

---(RECORD 2)
mysql> INSERT INTO contact_info (contactID, firstname, middleinitial, lastname, suffix_description, title_description, jobtitle, department, email, url, IMaddress, phone_number, phonetype_description, birthday,notes, companyname, street1, street2, city, state_province, zip_postalcode, country_region, company_url, company_phone) 
VALUES (3, 'Eve', 'C', 'Sampson', 'NULL', 'Mrs.', 'Assistant to Finance', 'Finance', 'esampson@concor.com', 'NULL', 'esampson', '505-546-3322 ext. 30', 'work', '1972-05-11', 'Very helpful.', 'Concor International, Inc.', '152 North Main Street', 'NULL', 'Berverly Hills', 'CA', '90210-3715', 'USA', 'wwww.concor.com', '323-555-5000');
Query OK, 1 row affected (0.00 sec)

---(RECORD 3)
mysql> INSERT INTO contact_info (contactID, firstname, middleinitial, lastname, suffix_description, title_description, jobtitle, department, email, url, IMaddress, phone_number, phonetype_description, birthday,notes, companyname, street1, street2, city, state_province, zip_postalcode, country_region, company_url, company_phone) 
VALUES (4, 'Carson', 'B', 'Campbell', 'III', 'Dr.', 'Chief of Medicine', 'Geriatrics', 'cbc232@mvch.org', 'NULL', 'NULL', '585-222-2121', 'Home', '1955-01-05', 'Wife: Lisa Kids: Lucas, Lucy, and Lucinda.', 'Mountain View Hospital', 'NULL', 'NULL', 'NULL','NULL','NULL','NULL', 'www.mvch.org', 'NULL');
Query OK, 1 row affected (0.00 sec)

---(Abel Kiros record)
mysql> INSERT INTO contact_info (contactID, firstname, middleinitial, lastname, suffix_description, title_description, jobtitle, department, email, url, IMaddress, phone_number, phonetype_description, birthday,notes, companyname, street1, street2, city, state_province, zip_postalcode, country_region, company_url, company_phone) VALUES(5, 'Abel', 'M', 'Kiros', 'NULL', 'NULL', 'Student', 'C.I.T', 'amk7296@g.rit.edu', 'NULL', 'NULL', '585-434-9332', 'Home', '1994-12-28', 'First Generation Student and first in the family to go to University', 'AnbessaNewYork', '80 Furlong rd', 'NULL', 'Rochester', 'NY', '14623-1314', 'USA', 'NULL', 'NULL');
Query OK, 1 row affected (0.00 sec)


--- TASK 2 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mysql> ALTER TABLE contact_info 
    -> ADD nickname varchar(20);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

--- TASK 3 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mysql> ALTER TABLE contact_info 
    -> ADD CONSTRAINT PK_contact_info PRIMARY KEY(firstname, lastname);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

--- TASK 4 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mysql> SELECT firstname, lastname, nickname, department FROM contact_info;
+-----------+----------+----------+-------------------------+
| firstname | lastname | nickname | department              |
+-----------+----------+----------+-------------------------+
| Abel      | Kiros    | NULL     | C.I.T                   |
| Carson    | Campbell | NULL     | Geriatrics              |
| Eli       | Wallowby | NULL     | Finance                 |
| Eve       | Sampson  | NULL     | Finance                 |
| William   | Destler  | NULL     | Office of the President |
+-----------+----------+----------+-------------------------+
5 rows in set (0.00 sec)

mysql> UPDATE contact_info
    -> SET nickname = 'Bill'
    -> WHERE contactID = 1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT firstname, lastname, nickname, department FROM contact_info;
+-----------+----------+----------+-------------------------+
| firstname | lastname | nickname | department              |
+-----------+----------+----------+-------------------------+
| Abel      | Kiros    | NULL     | C.I.T                   |
| Carson    | Campbell | NULL     | Geriatrics              |
| Eli       | Wallowby | NULL     | Finance                 |
| Eve       | Sampson  | NULL     | Finance                 |
| William   | Destler  | Bill     | Office of the President |
+-----------+----------+----------+-------------------------+
5 rows in set (0.00 sec)

--- TASK 5 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mysql> DELETE FROM contact_info WHERE companyname ='Concor International, Inc.';
Query OK, 2 rows affected (0.00 sec)

mysql> SELECT firstname, lastname, companyname 
    -> FROM contact_info
    -> ;
+-----------+----------+-----------------------------------+
| firstname | lastname | companyname                       |
+-----------+----------+-----------------------------------+
| Abel      | Kiros    | AnbessaNewYork                    |
| Carson    | Campbell | Mountain View Hospital            |
| William   | Destler  | Rochester Institute of Technology |
+-----------+----------+-----------------------------------+
3 rows in set (0.00 sec)
