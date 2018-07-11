<img src="https://upload.wikimedia.org/wikipedia/commons/c/c0/Planet-express-db.png" alt="Employees" width="80%"/>

The first several exercises build on each other and illustrate the use of subqueries.

1. Who received a 1.5kg package? *(Here I assume that `Weight` is measured using `kg`).*

```sql
SELECT C.Name
  FROM Client AS C
  JOIN Package AS P
    ON C.AccountNumber = P.Recipient 
  WHERE P.weight = 1.5
;
```

2. What is the total weight of all the packages that he sent?

> *What is this question asking?*

```sql

```

3. Which pilots transported those packages?

> *Also this one...*

```sql

```
