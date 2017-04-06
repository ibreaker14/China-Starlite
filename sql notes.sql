
CREATE TABLE users( `id` INT NOT NULL AUTO_INCREMENT , 
					`fname` VARCHAR(100) NOT NULL , 
					`lname` VARCHAR(100) NOT NULL , 
					`dob` DATE , 
					`username` VARCHAR(100) NOT NULL , 
					`password` VARCHAR(100) NOT NULL , 
					`email` VARCHAR(100) NOT NULL , 
					`phone` VARCHAR(20) NOT NULL,
					PRIMARY KEY (`id`)) ENGINE = InnoDB;


INSERT INTO users(`id`, `fname`, `lname`, `dob`, `username`, `password`, `email`,`phone`) VALUES (NULL, 'admin', 'user', '2016-04-16', 'admin', 'password', 'admin@adminuser.com','5623918225');


DELETE FROM users WHERE id=2; -- delete users
    		
---------------------------------------------------------------------------------------------------------------------------
create table users(
id int NOT NULL AUTO_INCREMENT,
fname varchar(50),
lname varchar(50),
dob datetime,
username varchar(50),
email varchar(50),
password varchar(50),
phone varchar(50),
CONSTRAINT users_pk PRIMARY KEY(id)
);

create table orders(
oid int NOT NULL AUTO_INCREMENT,
userID INT,
date DATE,
menu_menuid,
quantity INT,
CONSTRAINT orders_pk PRIMARY KEY(oid),
CONSTRAINT orders_fk FOREIGN KEY(menu_menuid) REFERENCES menu(menuid)
ON DELETE CASCADE ON UPDATE CASCADE
);

create table menu(
menuid int,
foodName varchar(50),
description varchar(200),
price double,
point int,
menutype varchar(50),
category varchar(50),
CONSTRAINT menu_pk PRIMARY KEY(menuid)
);


ALTER TABLE `menu`
  CHANGE COLUMN `url` `url` VARCHAR(1000);


SELECT `date`,`quantity`,`foodName`,`price`,`point`,`category` 
FROM orders o
INNER JOIN users u
on u.id=o.userID
INNER JOIN menu m
on m.menuid=o.menu_menuid
WHERE username='winterhusky';

SELECT `date`
FROM orders o
LEFT OUTER JOIN users u
on u.id=o.userID
WHERE username = 'winterhusky'
GROUP BY `date`;