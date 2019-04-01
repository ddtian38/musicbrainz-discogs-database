drop table if exists artist_credit;

create table Artist_Credit(
   id integer,
   name varchar(2000),
   artist_count integer,
   ref_count integer,
   created datetime
);