use Testnicolay;

/*
create table lag (
lagnavn varchar(100),
Spilt int,
Vunnet int,
Uavgjort int,
Tapt int,
Differanse int,
Straff int,
Poeng int,
constraint lagnavn_pk primary key (lagnavn)
);

create table spiller (
steamid varchar(20),
lagnavn varchar(100),
navn varchar(50),
nasjonalitet varchar(50),
constraint steamid_pk primary key (steamid),
constraint spiller_lag_fk foreign key (lagnavn) references lag (lagnavn)
);

insert into lag (lagnavn, spilt, vunnet, uavgjort, tapt, differanse, straff, poeng)
values ("Refu5ed", 4, 2, 2, 0, 4, 0, 9);

insert into lag (lagnavn, spilt, vunnet, uavgjort, tapt, differanse, straff, poeng)
values ("ChokeMasters", 4, 4, 0, 0, 8, 0, 12);

insert into lag (lagnavn, spilt, vunnet, uavgjort, tapt, differanse, straff, poeng)
values ("D!E", 4, 2, 1, 1, 2, 0, 7);

insert into lag (lagnavn, spilt, vunnet, uavgjort, tapt, differanse, straff, poeng)
values ("A-laje", 5, 2, 1, 2, 0, 0, 7);

insert into lag (lagnavn, spilt, vunnet, uavgjort, tapt, differanse, straff, poeng)
values ("KEYFOX", 4, 1, 2, 1, 0, 0, 5);

insert into lag (lagnavn, spilt, vunnet, uavgjort, tapt, differanse, straff, poeng)
values ("eKSEPSJONELT", 5, 1 , 2, 2, -2, 0, 5);

insert into lag (lagnavn, spilt, vunnet, uavgjort, tapt, differanse, straff, poeng)
values ("ESEL eSports", 5, 1, 0, 4, -6, 0, 3);

insert into lag (lagnavn, spilt, vunnet, uavgjort, tapt, differanse, straff, poeng)
values ("Riddle Elektroniske Sportsklubb CS:GO", 5, 0, 2, 3, -6, 0, 2);

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("0:0:16917813", "Refu5ed", "Kalin", "Norge");

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("0:0:97410172", "Refu5ed", "bosseog", "Norge");

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("0:1:14877670", "Refu5ed", "Candy", "Norge");

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("1:1:26639614", "Refu5ed", "eddi25", "Norge");

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("0:0:8423748", "Refu5ed", "Fr0d0", "Norge");

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("1:1:14419949", "Refu5ed", "Gogo1", "Norge");

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("1:0:13709506", "Refu5ed", "Sannitie", "Norge");

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("1:0:26315253", "Refu5ed", "Shero", "Norge");

insert into spiller (steamid, lagnavn, navn, nasjonalitet)
values ("0:1:110725395", "Refu5ed", "Zeon-", "Norge");

update lag
set spilt = 4
where lagnavn = "Refu5ed";
*/

select *
from lag
order by `Poeng` desc, `differanse` desc;

select *
from spiller