drop table if exists artist_alias_type;

create table Artist_Alias_Type(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description varchar(10),
   gid varchar(40)
);