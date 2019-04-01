drop table if exists track;

create table Track(
   id integer,
   gid varchar(40),
   recording integer,
   medium integer,
   position integer,
   number varchar(4000),
   name varchar(4000),
   artist_credit integer,
   length integer,
   edits_pending integer,
   last_updated datetime,
   is_data_track varchar(10)
);