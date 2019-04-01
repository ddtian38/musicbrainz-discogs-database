drop table if exists recording;

create table Recording(
   id integer,
   gid varchar(40),
   name varchar(4000),
   artist_credit integer,
   length integer,
   comment varchar(2000),
   edits_pending integer,
   last_updated datetime,
   video varchar(10)
);