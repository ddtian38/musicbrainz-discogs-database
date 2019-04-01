drop table if exists releases;
create table Releases(
   release_id integer,
   title varchar(1000),
   num_tracks integer,
   released varchar(1000),
   country varchar(1000)
);