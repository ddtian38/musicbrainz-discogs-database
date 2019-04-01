drop table if exists release_label;

create table Release_Label(
   id integer,
   release integer,
   label integer,
   catalog_number varchar(1000),
   last_updated datetime
);