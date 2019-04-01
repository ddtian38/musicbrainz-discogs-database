drop table if exists label_type;

create table Label_Type(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description varchar(10000),
   gid varchar(40)
);