drop table if exists medium;

create table Medium(
   id integer,
   release integer,
   position integer,
   format integer,
   name varchar(2000),
   edits_pending integer,
   last_updated datetime,
   track_count integer
);