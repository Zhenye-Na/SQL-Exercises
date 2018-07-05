<img src="https://upload.wikimedia.org/wikipedia/commons/4/47/Sql_warehouse.png" alt="Employees" width="50%" class="center"/>


1. Select all warehouses.

```sql

```

2. Select all boxes with a value larger than $150.

```sql

```

3. Select all distinct contents in all the boxes.

```sql

```

4. Select the average value of all the boxes.

```sql

```

5. Select the warehouse code and the average value of the boxes in each warehouse.

```sql

```

6. Same as previous exercise, but select only those warehouses where the average value of the boxes is greater than 150.

```sql

```

7. Select the code of each box, along with the name of the city the box is located in.

```sql

```

8. Select the warehouse codes, along with the number of boxes in each warehouse. Optionally, take into account that some warehouses are empty (i.e., the box count should show up as zero, instead of omitting the warehouse from the result).

```sql

```

9. Select the codes of all warehouses that are saturated (a warehouse is saturated if the number of boxes in it is larger than the warehouse's capacity).

```sql

```

10. Select the codes of all the boxes located in Chicago.

```sql

```

11. Create a new warehouse in New York with a capacity for 3 boxes.

```sql

```

12. Create a new box, with code "H5RT", containing "Papers" with a value of $200, and located in warehouse 2.

```sql

```

13. Reduce the value of all boxes by 15%.

```sql

```

14. Apply a 20% value reduction to boxes with a value larger than the average value of all the boxes.

> Attention: this solution doesn't work with MySQL 5.0.67: ERROR 1093 (HY000): You can't specify target table 'Boxes' for update in FROM clause



```sql

```

15. Remove all boxes with a value lower than $100.

```sql

```

16. Remove all boxes from saturated warehouses.

Attention: this solution doesn't work with MySQL 5.0.67: ERROR 1093 (HY000): You can't specify target table 'Boxes' for update in FROM clause

```sql

```





.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
}