set search_path to discog;

alter table discog.labels drop column cname;
alter table discog.labels add column cname varchar(255);
update discog.labels set cname = name;
update discog.labels set cname = split_part(cname, ';' , 1);
update discog.labels set cname = split_part(cname, '/' , 1);
update discog.labels set cname = split_part(cname, '(' , 1);
update discog.labels set cname = split_part(cname, '[' , 1);
update discog.labels set cname = split_part(cname, ':' , 1);
update discog.labels set cname = split_part(cname, '-' , 1);
update discog.labels set cname = split_part(cname, '...' , 1);
update discog.labels set cname = split_part(cname, 'Vs.' , 1);
update discog.labels set cname = split_part(cname, 'vs.' , 1);
update discog.labels set cname = initcap(btrim(cname));

alter table discog.releases drop column ctitle;
alter table discog.releases add column ctitle varchar(290);
update discog.releases set ctitle = title;
update discog.releases set ctitle = split_part(ctitle, ';' , 1);
update discog.releases set ctitle = split_part(ctitle, '/' , 1);
update discog.releases set ctitle = split_part(ctitle, '(' , 1);
update discog.releases set ctitle = split_part(ctitle, '[' , 1);
update discog.releases set ctitle = split_part(ctitle, ':' , 1);
update discog.releases set ctitle = split_part(ctitle, '-' , 1);
update discog.releases set ctitle = split_part(ctitle, '...' , 1);
update discog.releases set ctitle = split_part(ctitle, 'Vs.' , 1);
update discog.releases set ctitle = split_part(ctitle, 'vs.' , 1);
update discog.releases set ctitle = initcap(btrim(ctitle));



alter table discog.releases drop column ccountry;
alter table discog.releases add column ccountry varchar(39);
update discog.releases set ccountry = country;
update discog.releases set ccountry = split_part(ccountry, ';' , 1);
update discog.releases set ccountry = split_part(ccountry, '/' , 1);
update discog.releases set ccountry = split_part(ccountry, '(' , 1);
update discog.releases set ccountry = split_part(ccountry, '[' , 1);
update discog.releases set ccountry = split_part(ccountry, ':' , 1);
update discog.releases set ccountry = split_part(ccountry, '-' , 1);
update discog.releases set ccountry = split_part(ccountry, '...' , 1);
update discog.releases set ccountry = split_part(ccountry, 'Vs.' , 1);
update discog.releases set ccountry = split_part(ccountry, 'vs.' , 1);
update discog.releases set ccountry = split_part(ccountry, '&' , 1);
update discog.releases set ccountry = initcap(btrim(ccountry));



alter table discog.artists drop column cname;
alter table discog.artists add column cname varchar(149);
update discog.artists set cname = name;
update discog.artists set cname = split_part(cname, ';' , 1);
update discog.artists set cname = split_part(cname, '/' , 1);
update discog.artists set cname = split_part(cname, '(' , 1);
update discog.artists set cname = split_part(cname, '[' , 1);
update discog.artists set cname = split_part(cname, ':' , 1);
update discog.artists set cname = split_part(cname, '...' , 1);
update discog.artists set cname = split_part(cname, 'Vs.' , 1);
update discog.artists set cname = split_part(cname, 'vs.' , 1);
update discog.artists set cname = initcap(btrim(cname));



alter table discog.artists drop column crealname;
alter table discog.artists add column crealname varchar(244);
update discog.artists set crealname = realname;
update discog.artists set crealname = split_part(crealname, ';' , 1);
update discog.artists set crealname = split_part(crealname, '/' , 1);
update discog.artists set crealname = split_part(crealname, '(' , 1);
update discog.artists set crealname = split_part(crealname, '[' , 1);
update discog.artists set crealname = split_part(crealname, ':' , 1);
update discog.artists set crealname = split_part(crealname, '-' , 1);
update discog.artists set crealname = split_part(crealname, '...' , 1);
update discog.artists set crealname = split_part(crealname, 'Vs.' , 1);
update discog.artists set crealname = split_part(crealname, 'vs.' , 1);
update discog.artists set crealname = initcap(btrim(crealname));



alter table discog.genres drop column cname;
alter table discog.genres add column cname varchar(20);
update discog.genres set cname = name;
update discog.genres set cname = split_part(cname, ';' , 1);
update discog.genres set cname = split_part(cname, '/' , 1);
update discog.genres set cname = split_part(cname, '(' , 1);
update discog.genres set cname = split_part(cname, '[' , 1);
update discog.genres set cname = split_part(cname, ':' , 1);
update discog.genres set cname = split_part(cname, '-' , 1);
update discog.genres set cname = split_part(cname, '...' , 1);
update discog.genres set cname = split_part(cname, 'Vs.' , 1);
update discog.genres set cname = split_part(cname, 'vs.' , 1);
update discog.genres set cname = split_part(cname, '&' , 1);
update discog.genres set cname = initcap(btrim(cname));