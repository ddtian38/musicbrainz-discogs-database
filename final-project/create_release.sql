drop table if exists release;

create table Release(
   id integer,
   gid varchar(40),
   name varchar(2000),
   artist_credit integer,
   release_group integer,
   status integer,
   packaging integer,
   language integer,
   script integer,
   barcode varchar(2000),
   comment varchar(2000),
   edits_pending integer,
   quality varchar(10),
   last_updated datetime
);