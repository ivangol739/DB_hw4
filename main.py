import sqlalchemy

db = 'postgresql://ivangol739:********@localhost:5432/music'
engine = sqlalchemy.create_engine(db)
connection = engine.connect()

s1 = connection.execute("""
SELECT album_name, album_year FROM album
WHERE album_year = 2018;
""").fetchall()

s2 = connection.execute("""
SELECT track_name, track_duration FROM track
ORDER BY track_duration DESC;
""").fetchmany(1)

s3 = connection.execute("""
SELECT track_name FROM track
WHERE track_duration >= 3.5 * 60;
""").fetchall()

s4 = connection.execute("""
SELECT collection_name FROM collection
WHERE collection_year BETWEEN 2018 AND 2020;
""").fetchall()

s5 = connection.execute("""
SELECT performer_name FROM performer
WHERE performer_name NOT LIKE '%% %%';
""").fetchall()

s6 = connection.execute("""
SELECT track_name FROM track
WHERE track_name LIKE '%%My%%' OR track_name LIKE '%%Мой%%';
""").fetchall()
print(s6)