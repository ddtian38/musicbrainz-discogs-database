drop table if exists artist;

create table Artist(
   id integer,
   gid varchar(40),
   name varchar(4000),
   sort_name varchar(4000),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   type integer,
   area varchar(10),
   gender varchar(10),
   comment varchar(2000),
   edits_pending integer,
   last_updated datetime,
   ended varchar(10),
   begin_area varchar(10),
   end_area varchar(10)
);