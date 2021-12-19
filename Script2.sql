drop table if exists genre cascade;
drop table if exists performer cascade;
drop table if exists album cascade;
drop table if exists track cascade;
drop table if exists employee cascade;
drop table if exists collection cascade;
drop table if exists performer_genre cascade;
drop table if exists performer_album cascade;
drop table if exists collection_track cascade;


create table if not exists performer (
	performer_id integer primary key,
	performer_name varchar(80)
);

create table if not exists album (
	album_id integer primary key,
	album_name varchar(200),
	album_year integer
);

create table if not exists track (
	track_id integer primary key,
	track_name varchar(200),
	track_duration integer,
	album_id integer not null references album(album_id)
);

create table if not exists genre (
	genre_id integer primary key,
	genre_name varchar(80)
);

create table if not exists employee (
	employee_id integer primary key,
	employee_name varchar(80),
	employee_department varchar(80),
	boss integer references employee(employee_id)
);

create table if not exists collection (
	collection_id integer primary key,
	collection_name varchar(80),
	collection_year integer
);

create table if not exists performer_genre (
	performer_genre_id integer primary key,
	performer_id integer not null references performer(performer_id),
	genre_id integer not null references genre(genre_id)
);

create table if not exists performer_album (
	performer_album_id integer primary key,
	performer_id integer not null references performer(performer_id),
	album_id integer not null references album(album_id)
);

create table if not exists collection_track (
	collection_track_id integer primary key,
	track_id integer not null references track(track_id),
	collection_id integer not null references collection(collection_id)
);




