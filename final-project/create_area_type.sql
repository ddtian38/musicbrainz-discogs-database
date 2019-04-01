drop table if exists area_type;

create table Area_Type(
   id integer,
   name varchar(4000),
   parent integer,
   child_order integer,
   description varchar(4000),
   gid varchar(4000)
);