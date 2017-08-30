create table customer(
customer_id INT NOT NULL auto_increment PRIMARY KEY,
f_name varchar(30) NOT NULL,
l_name varchar(30) NOT NULL,
address varchar(30) NOT NULL,
zipcode int(4) NOT NULL,
email varchar(30) NOT NULL,
telephone int(8)
);

insert into customer(f_name, l_name, address, zipcode, email, telephone)
values ('Bobby', 'Nilsen', 'Vei 1', 4060, 'Bobbiboi93@hotmail.com', 90809080);
insert into customer(f_name, l_name, address, zipcode, email, telephone)
values ('Jens', 'Jensen', 'Vei 3', 4060, 'OG_Jens@hotmail.com', 90809990);
insert into customer(f_name, l_name, address, zipcode, email, telephone)
values ('Frans', 'Franssen', 'Gimleveien 10a', 4030, 'darkknight97', 63901864);

DELETE from customer
where customer_id = 1;

insert into customer(f_name, l_name, address, zipcode, email, telephone)
values ('Nicolay', 'Leknes', 'Skogveien 7B', 4030, 'nicolayleknes@live.no', 90929292);
insert into customer(f_name, l_name, address, zipcode, email, telephone)
values ('Marius', 'Granum Norli', 'Skogveien 7B', 4030, 'marius@gnorli.no', 63901864);

select f_name, l_name
from customer;

select *
from customer
where l_name like 'Nor%';


