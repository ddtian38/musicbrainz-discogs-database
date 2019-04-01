drop table if exists area_alias;

create table Area_Alias(
   id integer,
   area integer,
   name varchar(4000),
   locale varchar(10),
   edits_pending integer,
   last_updated datetime,
   type integer, 
   sort_name varchar(4000),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   primary_for_locale varchar(10),
   ended varchar(10)
);