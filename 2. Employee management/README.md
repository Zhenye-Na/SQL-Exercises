<img src="https://upload.wikimedia.org/wikipedia/commons/3/36/Employees.png" alt="Employees" width="50%" class="center"/>

1. Select the last name of all employees.

```sql
SELECT LastName
  FROM Employees
;
```

2. Select the last name of all employees, without duplicates.

```sql
SELECT DISTINCT LastName
  FROM Employees
;
```

3. Select all the data of employees whose last name is "Smith".

```sql
SELECT *
  FROM Employees
  WHERE LastName = 'Smith'
;
```

4. Select all the data of employees whose last name is "Smith" or "Doe".

```sql
SELECT *
  FROM Employees
  WHERE LastName = 'Smith'
    OR LastName = 'Doe'
;
```

```sql
/* With IN */
SELECT *
  FROM Employees
  WHERE LastName IN ('Smith', 'Doe')
;
```

5. Select all the data of employees that work in department 14.

```sql
SELECT *
  FROM Employees
  WHERE Department = 14
;
```

6. Select all the data of employees that work in department 37 or department 77.

```sql
SELECT *
  FROM Employees
  WHERE Department = 14
    OR Department = 77
;
```

7. Select all the data of employees whose last name begins with an "S".

```sql
SELECT *
  FROM Employees
  WHERE LastName LIKE 'S%'
;
```

8. Select the sum of all the departments' budgets.

```sql
SELECT SUM(Budget)
  FROM Departments
;
```

9. Select the number of employees in each department (you only need to show the department code and the number of employees).

```sql
SELECT D.Code, COUNT(*)
  FROM Employees AS E, Departments AS D
  GROUP BY D.Code
;
```

10. Select all the data of employees, including each employee's department's data.

```sql
SELECT *
FROM Employees AS E
  INNER JOIN Departments AS D
    ON D.Code = E.Department
;
```

11. Select the name and last name of each employee, along with the name and budget of the employee's department.

```sql
SELECT E.Name, E.LastName, D.Name, D.Budget
  FROM Employees AS E
  INNER JOIN Departments AS D
    ON E.Department = D.Code
;
```

12. Select the name and last name of employees working for departments with a budget greater than $60,000.

```sql
SELECT E.Name, E.LastName
  FROM Employees AS E
  INNER JOIN Departments AS D
    ON E.Department = D.Code
      AND D.Budget > 60000
;
```

13. Select the departments with a budget larger than the average budget of all the departments.

```sql
SELECT *
  FROM Departments
  WHERE Budget > (SELECT AVG(D.Budget)
                    FROM Departments AS D
                  )
;
```

14. Select the names of departments with more than two employees.

```sql
SELECT D.Name
  FROM Departments AS D
  INNER JOIN Employees AS E
    ON E.Department = D.Code
  GROUP BY D.Code
  HAVING COUNT(E.SSN) > 2
;
```

15. Select the name and last name of employees working for departments with second lowest budget.

```sql
SELECT E.Name, E.LastName
  FROM Departments AS D
  INNER JOIN Employees AS E
    ON E.Department = D.Code
  ORDER BY D.Budget
  LIMIT 1 OFFSET 1
;
```

16. Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11. Add an employee called "Mary Moore" in that department, with SSN 847-21-9811.

```sql
INSERT INTO Departments(Name, Budge, Code)
  VALUES ('Quality Assurance', 40000, 11)
;

INSERT INTO Employees(SSN, Name, LastName, Department)
  VALUES ('847219811', 'Mary Moore', 'Moore', 11)
;
```

> Whether adding quotes to integers in SQL Query, please refer to this [question](https://stackoverflow.com/questions/6781976/mysql-quote-numbers-or-not) in Stack Overflow.

17. Reduce the budget of all departments by 10%.

```sql
UPDATE Departments
  SET Budget = Budget * 0.9
;
```

18. Reassign all employees from the Research department (code 77) to the IT department (code 14).

```sql
UPDATE Employees
  SET Department = 14
  WHERE Department = 77
;
```

19. Delete from the table all employees in the IT department (code 14).

```sql
DELETE FROM Employees
  WHERE Department = 14
;
```

20. Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.

```sql
DELETE FROM Employees
  WHERE Department IN
    (SELECT Code FROM Departments
       WHERE Budget >= 60000
     )
;
```

21. Delete from the table all employees.

```sql
DELETE FROM Employees;
```
