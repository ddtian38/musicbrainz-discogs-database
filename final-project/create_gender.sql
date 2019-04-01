drop table if exists gender;

create table Gender(
   id integer,
   name varchar(200),
   parent integer,
   child_order integer,
   description varchar(1000),
   gid varchar(40)
);