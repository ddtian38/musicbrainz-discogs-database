drop table if exists place_alias;

create table Place_Alias(
   id integer,
   place integer,
   name varchar(2000),
   locale varchar(10),
   edits_pending integer,
   last_updated datetime,
   type integer,
   sort_name varchar(2000),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   primary_for_locale varchar(10),
   ended varchar(10)
);