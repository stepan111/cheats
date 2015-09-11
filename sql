DROP DATABASE [IF EXISTS] db_name;
USE mysql;
SHOW DATABASES; 
SHOW TABLES [FROM db_name];
SHOW COLUMNS FROM  [FROM db_name];
SHOW CREATE TABLE table_name;
SHOW INDEX FROM tbl_name;
SHOW GRANTS FOR user [FROM db_name];

SHOW GRANTS;
SHOW VARIABLES;
SHOW [FULL] PROCESSLIST;
SHOW STATUS;
SHOW TABLE STATUS [FROM db_name];
SELECT User,Host FROM mysql.user;

UPDATE 

SELECT COUNT(*) FROM servers;

ALTER TABLE servers_list CHANGE name hostname CHAR(30) ; 
ALTER TABLE contacts ADD email VARCHAR(60) AFTER name;
ALTER TABLE 'table_things' DROP 'col_stuff'; 

 INSERT INTO servers_list ( name ) VALUES ('odin') ,('tor');
 CREATE TABLE servers_list (
    -> id INT  NOT NULL AUTO_INCREMENT,
    -> name CHAR(30) NOT NULL,
    ->  PRIMARY KEY(`id`)
    -> )
    -> 
    -> ;


delete from servers_list where id=2 

drop table servers_list;
update servers_list set hostname='Odin' WHERE id=1;

 select * from dns_soa limit 1;
select author, zone, host,type, data,view from dns_records where host like '%vpn%';

GRANT ALL ON cacti.* TO cactiuser@localhost IDENTIFIED BY 'somepassword';
flush privileges;

SELECT column_name, column_default, data_type 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE table_name = 'my_table';

#Mysql write into file
select * INTO OUTFILE '/tmp/ptr.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'  from ptr;

# Mysql regexp replace 
http://chesser.ru/blog/how_to_regexp_replace_text_field_in_mysql/
