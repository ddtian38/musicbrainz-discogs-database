drop table if exists area;

create table Area(
   id integer,
   gid varchar(40),
   name varchar(4000),
   type integer,
   edits_pending integer,
   last_updated datetime,
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   ended varchar(10),
   comment varchar(4000)
);