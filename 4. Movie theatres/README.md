<img src="https://upload.wikimedia.org/wikipedia/commons/f/ff/Sql_movie_theaters.png" alt="Employees" width="50%" class="center"/>

1. Select the title of all movies.

```sql
SELECT Title
  FROM Movies
;
```

2. Show all the distinct ratings in the database.

```sql
SELECT DISTINCT Rating
  FROM Movies
;
```

3. Show all unrated movies.

```sql
SELECT *
  FROM Movies
  WHERE Rating IS NULL
;
```

4. Select all movie theaters that are not currently showing a movie.

```sql
SELECT * 
  FROM MovieTheaters 
  WHERE Movie IS NULL
;
```

5. Select all data from all movie theaters and, additionally, the data from the movie that is being shown in the theater (if one is being shown).

```sql
SELECT *
  FROM MovieTheaters
  LEFT JOIN Movies
    ON MovieTheaters.Movie = Movies.Code
;
```

6. Select all data from all movies and, if that movie is being shown in a theater, show the data from the theater.

```sql
SELECT *
  FROM MovieTheaters
  RIGHT JOIN Movies
    ON MovieTheaters.Movie = Movies.Code
;
```

7. Show the titles of movies not currently being shown in any theaters.

```sql
SELECT
  FROM Movies AS M
  WHERE M.Code NOT IN (SELECT T.Movie
                       FROM MovieTheaters AS T
                       WHERE T.Movie IS NOT NULL)
;
```

8. Add the unrated movie "One, Two, Three".

```sql
INSERT INTO Movies(Title, Rating)
  VALUES ('One, Two, Three', NULL)
;
```

9. Set the rating of all unrated movies to "G".

```sql
UPDATE Movies
  SET Rating = 'G'
  WHERE Rating IS NULL
;
```

10. Remove movie theaters projecting movies rated "NC-17".

```sql
DELETE FROM MovieTheaters
  WHERE Movie IN (SELECT Code
                    FROM Movies
                    WHERE Rating = 'NC-17'
                  )
;
```
