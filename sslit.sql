use sslit;

/*
create table user(
username varchar(100),
password varchar(16),
constraint username_pk primary key (username)
);


insert into user (username, password) values ("sannitie", "hunter12");

*/

select password from user where username in (sannitie);
select password from user where username in ("sannitie");