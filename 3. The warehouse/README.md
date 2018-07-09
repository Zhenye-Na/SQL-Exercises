<img src="https://upload.wikimedia.org/wikipedia/commons/4/47/Sql_warehouse.png" alt="Employees" width="50%" class="center"/>


1. Select all warehouses.

```sql
SELECT *
  FROM Warehouses
;
```

2. Select all boxes with a value larger than $150.

```sql
SELECT *
  FROM Boxes
  WHERE Value > 150
;
```

3. Select all distinct contents in all the boxes.

```sql
SELECT DISTINCT(Contents)
  FROM Boxes
;
```

4. Select the average value of all the boxes.

```sql
SELECT AVG(Value)
  FROM Boxes
;
```

5. Select the warehouse code and the average value of the boxes in each warehouse.

```sql
SELECT Warehouse, AVG(Value)
  FROM Boxes
  GROUP BY Warehouse
;
```

6. Same as previous exercise, but select only those warehouses where the average value of the boxes is greater than 150.

```sql
SELECT Warehouse, AVG(Value)
  FROM Boxes
  GROUP BY Warehouse
  HAVING AVG(Value) > 150
;
```

7. Select the code of each box, along with the name of the city the box is located in.

```sql
SELECT W.Code, W.Location
  FROM Warehouses AS W
  INNER JOIN Boxes AS B
    ON W.Code = B.Warehouse
;
```

8. Select the warehouse codes, along with the number of boxes in each warehouse. Optionally, take into account that some warehouses are empty (i.e., the box count should show up as zero, instead of omitting the warehouse from the result).

```sql
SELECT W.Code, COUNT(B.Code)
  FROM Warehouses AS W
  LEFT JOIN Boxes AS B
    ON W.Code = B.Warehouse
  GROUP BY B.Code
;
```

9. Select the codes of all warehouses that are saturated (a warehouse is saturated if the number of boxes in it is larger than the warehouse's capacity).

```sql
SELECT W.Code
  FROM Warehouses AS W
  INNER JOIN Boxes AS B
    ON W.Code = B.Warehouse
  GROUP BY W.Code
  WHERE COUNT(B.Code) > W.Capacity
;
```

10. Select the codes of all the boxes located in Chicago.

```sql
SELECT B.Code
  FROM Boxes AS B
  INNER JOIN Warehouses AS W
    ON W.Code = B.Warehouse
  WHERE W.Location = 'Chicago'
;
```

11. Create a new warehouse in New York with a capacity for 3 boxes.

```sql
INSERT INTO Warehouses(Location, Capacity)
  VALUES ('New York', 3)
;
```

12. Create a new box, with code "H5RT", containing "Papers" with a value of $200, and located in warehouse 2.

```sql
INSERT INTO Boxes(Code, Contents, Value, Warehouse)
  VALUES ('H5RT', 'Papers', 200, 2)
;
```

13. Reduce the value of all boxes by 15%.

```sql
UPDATE Boxes
  SET Value = Value * 0.85
;
```

14. Apply a 20% value reduction to boxes with a value larger than the average value of all the boxes.

> Attention: this solution doesn't work with MySQL 5.0.67: ERROR 1093 (HY000): You can't specify target table 'Boxes' for update in FROM clause

```sql
UPDATE Boxes
  SET Value = Value * 0.8
  WHERE Value > (SELECT AVG(Value)
                   FROM Boxes
                 )
;
```

15. Remove all boxes with a value lower than $100.

```sql
DELETE FROM Boxes
  WHERE Value < 100
;
```

16. Remove all boxes from saturated warehouses.

> Attention: this solution doesn't work with MySQL 5.0.67: ERROR 1093 (HY000): You can't specify target table 'Boxes' for update in FROM clause

```sql
DELTE FROM Boxes
WHERE Warehouse IN (
                    SELECT Code
                    FROM Warehouses AS W
                    WHERE Capacity < (SELECT COUNT(B.Code)
                                      FROM Boxes AS B
                                      WHERE B.Warehouse = W.Code
                                      )
                    )
;
```
