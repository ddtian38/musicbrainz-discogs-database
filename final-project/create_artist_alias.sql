drop table if exists artist_alias;

create table Artist_Alias(
   id integer,
   artist integer,
   name varchar(2000),
   locale varchar(2000),
   edits_pending integer,
   last_updated datetime,
   type varchar(10),
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