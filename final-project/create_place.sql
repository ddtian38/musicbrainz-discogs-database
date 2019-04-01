drop table if exists place;

create table Place(
   id integer,
   gid varchar(40),
   name varchar(2000),
   type integer,
   address varchar(5000),
   area integer,
   coordinates varchar(65000),
   comment varchar(2000),
   edits_pending integer,
   last_updated datetime,
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   ended varchar(10)
);