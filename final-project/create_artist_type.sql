drop table if exists artist_type;

create table Artist_Type(
   id integer,
   name varchar(200),
   parent integer,
   child_order integer,
   description varchar(2000),
   gid varchar(40)
);