drop table if exists area_alias_type;

create table Area_Alias_Type(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description varchar(10),
   gid varchar(4000)
);