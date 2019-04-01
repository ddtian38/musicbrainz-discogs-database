drop table if exists label;

create table Label(
   id integer,
   gid varchar(40),
   name varchar(2000),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   label_code integer,
   type varchar(10),
   area integer,
   comment varchar(2000),
   edits_pending integer,
   last_updated datetime,
   ended varchar(10)
);