![](https://upload.wikimedia.org/wikipedia/commons/b/b2/Computer-store-db.png)

> Please note the datatypes given are `SQLite` datatypes.
>
> `PK` and `FK` stand for **primary key** and **foreign key** respectively.


1. Select the names of all the products in the store.

    ```sql
    SELECT Name FROM Products;
    ```

2. Select the names and the prices of all the products in the store.

    ```sql
    SELECT Name, Price FROM Products;
    ```

3. Select the name of the products with a price less than or equal to $200.

    ```sql
    SELECT Name FROM Products WHERE Price <= 200;
    ```

4. Select all the products with a price between $60 and $120.

```

```

5. Select the name and price in cents (i.e., the price must be multiplied by 100).

```

```

6. Compute the average price of all the products.

```

```

7. Compute the average price of all products with manufacturer code equal to 2.

```

```

8. Compute the number of products with a price larger than or equal to $180.

```

```

9. Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).

```

```

10. Select all the data from the products, including all the data for each product's manufacturer.

```

```

11. Select the product name, price, and manufacturer name of all the products.

```

```

12. Select the average price of each manufacturer's products, showing only the manufacturer's code.

```

```

13. Select the average price of each manufacturer's products, showing the manufacturer's name.

```

```

14. Select the names of manufacturer whose products have an average price larger than or equal to $150.

```

```

15. Select the name and price of the cheapest product.

```

```

16. Select the name of each manufacturer along with the name and price of its most expensive product.

```

```

17. Add a new product: Loudspeakers, $70, manufacturer 2.

```

```

18. Update the name of product 8 to "Laser Printer".

```

```

19. Apply a 10% discount to all products.

```

```

20. Apply a 10% discount to all products with a price larger than or equal to $120.

```

```