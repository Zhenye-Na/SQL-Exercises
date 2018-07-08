![](https://upload.wikimedia.org/wikipedia/commons/b/b2/Computer-store-db.png)

> Please note the datatypes given are `SQLite` datatypes.
>
> `PK` and `FK` stand for **primary key** and **foreign key** respectively.


1. Select the names of all the products in the store.

```sql
SELECT Name
  FROM Products
;
```

2. Select the names and the prices of all the products in the store.

```sql
SELECT Name, Price
  FROM Products
;
```

3. Select the name of the products with a price less than or equal to $200.

```sql
SELECT Name
  FROM Products
  WHERE Price <= 200
;
```

4. Select all the products with a price between $60 and $120.

```sql
SELECT *
  FROM Products
  WHERE Price >= 60
  AND Price <= 120
;
```

5. Select the name and price in cents (i.e., the price must be multiplied by 100).

```sql
SELECT Name, Price * 100
  FROM Products
;
```

6. Compute the average price of all the products.

```sql
SELECT AVG(Price)
  FROM Products
;
```

7. Compute the average price of all products with manufacturer code equal to 2.

```sql
SELECT AVG(p.Price)
  FROM Products AS p, Manufactures AS m
  WHERE m.code = 2
;
```

8. Compute the number of products with a price larger than or equal to $180.

```sql
SELECT COUNT(*)
  FROM Products AS p
  WHERE p.Price >= 180
;
```

9. Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).

```sql
SELECT p.Name AS Name, p.Price AS Price
  FROM Products AS p
  WHERE p.Price >= 180
  ORDER BY Name, Price DESC
;
```

10. Select all the data from the products, including all the data for each product's manufacturer.

```sql
SELECT *
  FROM Products AS p, Manufacturers AS m
  WHERE p.Manufacture == m.Code
;
```

11. Select the product name, price, and manufacturer name of all the products.

```sql
SELECT p.Name, p.Price, m.Name
  FROM Products AS p, Manufacturers AS m
  WHERE p.Manufacturer == m.Code
;
```

```sql
/* With INNER JOIN */
SELECT Products.Name, Price, Manufacturers.Name
  FROM Products INNER JOIN Manufacturers
  ON Products.Manufacturer = Manufacturers.Code
;
```

12. Select the average price of each manufacturer's products, showing only the manufacturer's code.

```sql
SELECT AVG(p.Price), m.Code
  FROM Products AS p, Manufacturers AS m
  WHERE p.Manufacturer == m.Code
  GROUP BY p.Manufacture
;
```

13. Select the average price of each manufacturer's products, showing the manufacturer's name.

```sql
SELECT AVG(p.Price) AS Price, m.Name AS Name
  FROM Products AS p, Manufacturers AS m
  WHERE p.Manufacturer = m.Code
  GROUP BY m.Name
;
```

14. Select the names of manufacturer whose products have an average price larger than or equal to $150.

```sql
SELECT m.Name
  FROM Products AS p, Manufacturers AS m
  WHERE m.Code = p.Manufacturer
  GROUP BY m.Name
  HAVING AVG(p.Price) >= 150
;
```

```sql
/* With INNER JOIN */
SELECT Manufacturers.Name
  FROM Products INNER JOIN Manufacturers
  ON Products.Manufacturer = Manufacturers.Code
  GROUP BY Manufacturers.Name
  HAVING AVG(Price) >= 150
;
```

15. Select the name and price of the cheapest product.

```sql
SELECT p.Name, p.Price
  FROM Products AS p
  ORDER BY p.Price
  LIMIT 1
;
```

```sql
/* With a nested SELECT */
SELECT Name, Price
  FROM Products
  WHERE Price = (SELECT MIN(Price) FROM Products)
;
```

16. Select the name of each manufacturer along with the name and price of its most expensive product.

```sql
SELECT m.Name, p.Name, p.Price
  FROM Products AS p
    INNER JOIN Manufacturers AS m
      ON p.Manufacturer = m.Code
        AND p.Price = (SELECT MAX(p2.Price)
                         FROM Products AS p2
                         WHERE p2.Manufacturer = m.Code
                       )
;
```

17. Add a new product: Loudspeakers, $70, manufacturer 2.

```sql
INSERT INTO Products(Name , Price , Manufacturer)
  VALUES ('Loudspeakers', 70, 2)
;
```

18. Update the name of product 8 to "Laser Printer".

```sql
UPDATE Products
  SET Name = "Laser Printer"
  WHERE Manufacturer = 8
;
```

19. Apply a 10% discount to all products.

```sql
UPDATE Products
  SET Price = Price * 0.9
;
```

20. Apply a 10% discount to all products with a price larger than or equal to $120.

```sql
UPDATE Products
  SET Price = Price * 0.9
  WHERE Price >= 120
;
```
