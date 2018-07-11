<img src="https://upload.wikimedia.org/wikipedia/commons/5/53/Sql_pieces_providers.png" alt="Employees" width="50%" class="center"/>


1. Select the name of all the pieces.

```sql
SELECT Name
  FROM Pieces
;
```

2. Select all the providers' data.

```sql
SELECT *
  FROM Providers
;
```

3. Obtain the average price of each piece (show only the piece code and the average price).

```sql
SELECT Pi.Code, AVG(Pr.Price)
  FROM Pieces AS Pi
    INNER JOIN Providers AS Pr
    ON Pi.Code = Pr.Piece
;
```

4. Obtain the names of all providers who supply piece 1.

```sql
SELECT *
  FROM Providers AS Prr
  INNER JOIN Provides AS Pr
    ON Prr.Code = Pr.Provider
      AND Pr.Piece = 1
;
```

5. Select the name of pieces provided by provider with code "HAL".

```sql
SELECT Pieces.Name
  FROM Pieces
  INNER JOIN Provides
  ON Pieces.Code = Provides.Piece
    AND Provides.Provider = 'HAL'
;
```

Optional solutions:

```sql
/* With IN subquery */
SELECT Name
  FROM Pieces
  WHERE Code IN (SELECT Piece
                 FROM Provides
                 WHERE Provider = 'HAL'
                 )
;


/* With EXISTS subquery */
SELECT Name
  FROM Pieces
  WHERE EXISTS (SELECT *
                FROM Provides
                WHERE Provider = 'HAL'
                  AND Piece = Pieces.Code
                )
;
```

6. For each piece, find the most expensive offering of that piece and include the piece name, provider name, and price **(note that there could be two providers who *supply the same piece at the most expensive price*)**.

```sql
SELECT Pieces.Name, Providers.Name, Price
  FROM Pieces INNER JOIN Provides ON Pieces.Code = Piece
              INNER JOIN Providers ON Providers.Code = Provider
  WHERE Price = (
                 SELECT MAX(Pr.Price)
                   FROM Provides AS Pr
                   WHERE Piece = Pieces.Code
                 )
;
```

7. Add an entry to the database to indicate that "Skellington Supplies" (code "TNBC") will provide sprockets (code "1") for 7 cents each.

```sql
INSERT INTO Provides 
  VALUES (1, 'TNBC', 7)
;
```

8. Increase all prices by one cent. _(I suppose price in the table is measured using *dollar*)_

```sql
UPDATE Provides SET Price = Price + 0.01;
```

9. Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply bolts (code 4).

```sql
DELETE FROM Provides
  WHERE Provider = 'RBT'
    AND Piece = 4
;
```

10. Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply any pieces (the provider should still remain in the database).

```sql
DELETE FROM Provides
  WHERE Provider = 'RBT'
;
```
