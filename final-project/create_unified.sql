create schema unified;
set search_path to unified;

create table unified.Artists as select m.id as MB_artist_id, m.cname as name, m.type as MB_artist_type_id,
m.area as MB_area_id, m.gender as MB_gender_id , d.tist_id as D_artists_id from musicbrainz.artist m inner join discog.artists d on m.cname = d.cname;

create table unified.MB_Artist_Alias as select id as artist_alias_id, artist as artist_id, type as artist_alias_type_id,
cname as name from musicbrainz.artist_alias;

create table unified.MB_Artist_Alias_Type as select id as artist_alias_type_id,cname as name,
cdescription as description from musicbrainz.artist_alias_type;

create table unified.MB_Artist_Credit as select id as artist_credit_id, cname as name
from musicbrainz.artist_credit;

create table unified.MB_Artist_Credit_Name as select artist_credit as artist_credit_id, position, artist 
as artist_id, cname as name from musicbrainz.artist_credit_name;

create table unified.MB_Artist_Type as select id as artist_type_id, cname as name from musicbrainz.artist_type;

create table unified.MB_Area as select id as area_id, cname as name, type as area_type_id from musicbrainz.area;

create table unified.MB_Area_Alias as select id as area_alias_id, area as area_id, cname as name, 
type as area_alias_type_id from musicbrainz.area_alias;

create table unified.MB_Area_Alias_Type as select id as area_alias_type_id, 
cname as name from musicbrainz.area_alias_type;

create table unified.MB_Area_Type as select id as area_type_id, cname as name from musicbrainz.area_type;

create table unified.MB_Country_Area as select are as area_id from musicbrainz.country_area;

create table unified.MB_Gender as select id as gender_id, cname as name from musicbrainz.gender;

create table unified.MB_Label as select id as label_id, cname as name, type as label_type_id,
area as area_id from musicbrainz.label;

create table unified.MB_Label_Type as select id as label_type_id, cname as name from musicbrainz.label_type;

create table unified.MB_Medium as select id as medium_id, release as release_id, cname as name from musicbrainz.medium;

create table unified.MB_Place as select id as place_id, cname as name, type as place_type_id, caddress as address, area as area_id 
from musicbrainz.place;

create table unified.MB_Place_Alias as select id as place_alias_id, place as place_id, cname as name, type as place_alias_type_id
from musicbrainz.place_alias;

create table unified.MB_Place_Alias_Type as select id as place_alias_type_id, cname as name from musicbrainz.place_alias_type;

create table unified.MB_Place_Type as select id as place_type_id, cname as name from musicbrainz.place_type;

create table unified.MB_Recording as select id as recording_id, artist_credit as artist_credit_id, cname as name from musicbrainz.recording;

create table unified.MB_Release as select id as release_id, artist_credit as artist_credit_id, cname as name from musicbrainz.release;

create table unified.MB_Release_Country as select release as release_id, country as area_id from musicbrainz.release_country;

create table unified.MB_Release_Label as select id as release_label_id, release as release_id, label as label_id from musicbrainz.release_label;

create table unified.MB_Track as select id as track_id, recording as recording_id, medium as medium_id, artist_credit as artist_credit_id, cname as name from musicbrainz.track;


create table unified.D_Genres as select genre_id as genres_id, cname as genre from discog.genres;

create table unified.D_Labels as select label_id as labels_id, cname as label from discog.labels;

create table unified.D_Releases as select release_id as releases_id, ctitle as title, ccountry as country
from discog.releases;

create table unified.D_Releases_Artists as select release_id as releases_id, artist_id as discog_artists_id
from discog.releases_artists;

create table unified.D_Releases_Genres as select release_id as releases_id, genre_id as genres_id from
discog.releases_genres;

create table unified.D_Releases_Labels as select release_id as releases_id, label_id as labels_id from
discog.releases_labels; 