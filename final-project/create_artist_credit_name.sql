drop table if exists artist_credit_name;

create table Artist_Credit_Name(
   artist_credit integer,
   position integer,
   artist integer,
   name varchar(4000),
   join_phrase varchar(200)
);