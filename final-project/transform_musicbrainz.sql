-- Alters tables
alter table musicbrainz.artist add column cname varchar(311);
alter table musicbrainz.artist_alias add column cname varchar(209);
alter table musicbrainz.artist_alias_type add column cname varchar(311);
alter table musicbrainz.artist_alias_type add column cdescription varchar(311);
alter table musicbrainz.artist_credit add column cname varchar(1495);
alter table musicbrainz.artist_credit_name add column cname varchar(311);
alter table musicbrainz.artist_type add column cname varchar(9);
alter table musicbrainz.area add column cname varchar(74);
alter table musicbrainz.area_alias add column cname varchar(104);
alter table musicbrainz.area_alias_type add column cname varchar(11);
alter table musicbrainz.area_type add column cname varchar(12);
alter table musicbrainz.label add column cname varchar(118);
alter table musicbrainz.label_type add column cname varchar(19);
alter table musicbrainz.medium add column cname varchar(478);
alter table musicbrainz.place add column cname varchar(138);
alter table musicbrainz.place add column caddress varchar(125);
alter table musicbrainz.place_alias add column cname varchar(240);
alter table musicbrainz.place_alias_type add column cname varchar(11);
alter table musicbrainz.place_type add column cname varchar(18);
alter table musicbrainz.release add column cname varchar(865);
alter table musicbrainz.recording add column cname varchar(1904);
alter table musicbrainz.gender add column cname varchar(6);
alter table musicbrainz.track add column cname varchar(1904);

--Updates table
update musicbrainz.artist set cname = name;
update musicbrainz.artist_alias set cname = name;
update musicbrainz.artist_alias_type set cname = name;
update musicbrainz.artist_alias_type set cdescription = description;
update musicbrainz.artist_credit set cname = name;
update musicbrainz.artist_credit_name set cname = name;
update musicbrainz.artist_type set cname = name;
update musicbrainz.area set cname = name;
update musicbrainz.area_alias set cname = name;
update musicbrainz.area_alias_type set cname = name;
update musicbrainz.area_type set cname = name;
update musicbrainz.label set cname = name;
update musicbrainz.label_type set cname = name;
update musicbrainz.medium set cname = name;
update musicbrainz.place set cname = name;
update musicbrainz.place set caddress = address;
update musicbrainz.place_alias set cname = name;
update musicbrainz.place_alias_type set cname = name;
update musicbrainz.place_type set cname = name;
update musicbrainz.release set cname = name;
update musicbrainz.recording set cname = name;
update musicbrainz.track set cname = name;
update musicbrainz.gender set cname = name;

--Removing punctuations
update musicbrainz.artist set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.artist set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.artist set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.artist set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.artist set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.artist set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.artist set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.artist set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.artist_alias set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.artist_alias set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.artist_alias set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.artist_alias set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.artist_alias set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.artist_alias set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.artist_alias set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.artist_alias set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.artist_alias_type set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, ';' , 1)));
update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, '/' , 1)));
update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, '(' , 1)));
update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, '[' , 1)));
update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, ':' , 1)));
update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, '-' , 1)));
update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, '...' , 1)));
update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, 'with' , 1)));
update musicbrainz.artist_alias_type set cdescription = initcap(btrim(split_part(cdescription, 'Vs.' , 1)));

update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.artist_credit set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.artist_credit_name set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.artist_type set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.area set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.area set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.area set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.area set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.area set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.area set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.area set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.area set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.area set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.area_alias set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.area_alias_type set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.area_type set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.label set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.label set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.label set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.label set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.label set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.label set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.label set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.label set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.label set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.label_type set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.medium set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.medium set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.medium set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.medium set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.medium set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.medium set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.medium set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.medium set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.medium set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.place set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.place set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.place set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.place set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.place set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.place set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.place set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.place set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.place set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, ';' , 1)));
update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, '/' , 1)));
update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, '(' , 1)));
update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, '[' , 1)));
update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, ':' , 1)));
update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, '-' , 1)));
update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, '...' , 1)));
update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, 'with' , 1)));
update musicbrainz.place set caddress = initcap(btrim(split_part(caddress, 'Vs.' , 1)));

update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.place_alias set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.place_alias_type set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.place_type set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.release set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.release set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.release set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.release set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.release set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.release set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.release set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.release set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.release set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.recording set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.recording set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.recording set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.recording set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.recording set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.recording set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.recording set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.recording set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.recording set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.gender set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.gender set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.gender set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.gender set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.gender set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.gender set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.gender set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.gender set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.gender set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));

update musicbrainz.track set cname = initcap(btrim(split_part(cname, ';' , 1)));
update musicbrainz.track set cname = initcap(btrim(split_part(cname, '/' , 1)));
update musicbrainz.track set cname = initcap(btrim(split_part(cname, '(' , 1)));
update musicbrainz.track set cname = initcap(btrim(split_part(cname, '[' , 1)));
update musicbrainz.track set cname = initcap(btrim(split_part(cname, ':' , 1)));
update musicbrainz.track set cname = initcap(btrim(split_part(cname, '-' , 1)));
update musicbrainz.track set cname = initcap(btrim(split_part(cname, '...' , 1)));
update musicbrainz.track set cname = initcap(btrim(split_part(cname, 'with' , 1)));
update musicbrainz.track set cname = initcap(btrim(split_part(cname, 'Vs.' , 1)));