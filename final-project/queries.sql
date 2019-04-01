set search_path to unified;

--How many artists from either dataset have the first name John?
select split_part(name, ' ', 1) as first_name, count(split_part(name, ' ', 1)) as #_of_people_with_name
from artists
where split_part(name, ' ', 1) is not null and split_part(name, ' ', 1) != ' ' and len(split_part(name, ' ', 1)) > 1
group by split_part(name, ' ', 1)
order by count(split_part(name, ' ', 1)) desc;

--How many releases in each genre are by an artist named "Jean"?
select g.genre as genre, count(g.genres_id) as number_of_releases
from D_Genres g join D_Releases_Genres d on g.genres_id = d.genres_id
join D_Releases r on d.releases_id = r.releases_id
join D_Releases_Artists ra on r.releases_id = ra.releases_id
join artists a on ra.discog_artists_id = a.d_artists_id
where g.genre is not null and a.name = 'Jean'
group by g.genre
order by number_of_releases desc;

--Which genre has the most releases?
select g.genre, count(g.genres_id) as number_of_releases 
from D_Genres g join D_Releases_Genres d on g.genres_id = d.genres_id
join D_Releases r on d.releases_id = r.releases_id
join D_Releases_Artists ra on r.releases_id = ra.releases_id
join artists a on ra.discog_artists_id = a.d_artists_id
where g.genre is not null and g.genre != ''
group by g.genre, g.genres_id
order by number_of_releases desc;

--Which countries (top 20) in musicbrainz have the most labels?
select a.name as country, count(l.name) as number_of_labels
from
mb_country_area c
left outer join mb_area a on c.area_id = a.area_id
left outer join mb_release_country rc on c.area_id = rc.area_id
left outer join mb_release r on r.release_id = rc.release_id
left outer join mb_release_label rl on rl.release_id = r.release_id
right outer join mb_label l on rl.label_id = l.label_id
where a.name is not null and a.name != ' '
group by a.name
order by count(l.name) desc
limit 20;

--Which label in discog has the most releases?
select dl.label, count(dl.labels_id) as number_of_releases
from 
d_labels dl
left outer join d_releases_labels drl on dl.labels_id = drl.labels_id
left outer join d_releases dr on drl.releases_id = dr.releases_id
group by dl.label
order by number_of_releases desc
limit 50;

-- In the Discog dataset, what are the top genres?
select g.genres_id, g.genre, count(g.genres_id) as total
from d_genres g join d_releases_genres rg on g.genres_id = rg.genres_id
join d_releases r on rg.releases_id = r.releases_id
join d_releases_artists ra on ra.releases_id = r.releases_id
join artists a on ra.discog_artists_id = a.d_artists_id
group by g.genre, g.genres_id
order by total desc;

-- What are the top countries with the most releases?
select area.area_id, area.name, count(area.area_id) as total
from d_releases r join d_releases_artists ra on ra.releases_id = r.releases_id
join artists a on ra.discog_artists_id = a.d_artists_id
join mb_area area on a.mb_area_id = area.area_id
join mb_country_area country on area.area_id = country.area_id
join d_releases_genres rg on rg.release_id = r.release_id
join g_genres g on g.genres_id = rg.genres_id
group by area.area_id, area.name
order by total desc;

--How many performances were there in each city?
select area.name as name_of_city, count(area.name) as total_performances_in_city, (select count(*) from artists a join mb_artist_type artist_type on a.mb_artist_type_id = artist_type.artist_type_id
join mb_area area on a.mb_area_id = area.area_id
join mb_place place on area.area_id = place.area_id
join mb_area_type area_type on area.area_type_id = area_type.area_type_id
join mb_place_type place_type on place_type.place_type_id = place.place_type_id
where artist_type.name != '' and area_type.name = 'City') as total_performances, count(area.name)/(select count(*) from artists a join mb_artist_type artist_type on a.mb_artist_type_id = artist_type.artist_type_id
join mb_area area on a.mb_area_id = area.area_id
join mb_place place on area.area_id = place.area_id
join mb_area_type area_type on area.area_type_id = area_type.area_type_id
join mb_place_type place_type on place_type.place_type_id = place.place_type_id
where artist_type.name != '' and area_type.name = 'City') as perc

from artists a join mb_artist_type artist_type on a.mb_artist_type_id = artist_type.artist_type_id
join mb_area area on a.mb_area_id = area.area_id
join mb_place place on area.area_id = place.area_id
join mb_area_type area_type on area.area_type_id = area_type.area_type_id
join mb_place_type place_type on place_type.place_type_id = place.place_type_id
where artist_type.name != '' and area_type.name = 'City' 
group by area.name
order by total_performances_in_city desc;

--What are the genres by The Rolling Stones in the database?
select g.genres_id, g.genre, count(g.genre) as total
from mb_track t join mb_artist_credit ac on t.artist_credit_id = ac.artist_credit_id
join mb_artist_credit_name ac_name on ac.artist_credit_id = ac_name.artist_credit_id
join artists a on ac_name.artist_id = a.mb_artist_id
join d_releases_artists ra on a.d_artists_id = ra.discog_artists_id
join d_releases r on ra.releases_id = r.releases_id
join d_releases_genres rg on r.releases_id = rg.releases_id
join d_genres g on rg.genres_id = g.genres_id
where a.name = 'The Rolling Stones'
group by g.genres_id, g.genre
order by total desc;

-- How many types of artists are there in the United States?
select artist_type.name as type_of_artist, count(artist_type.name)
from mb_artist_type artist_type join artists a on a.mb_artist_type_id = artist_type.artist_type_id
join mb_area area on area.area_id = a.mb_area_id
join mb_area_type area_type on area.area_type_id = area_type.area_type_id
where area_type.name = 'Country' and area.name = 'United States'
group by artist_type.name;




