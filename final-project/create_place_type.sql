drop table if exists place_type;

create table Place_Type(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description varchar(2000),
   gid varchar(40)
);