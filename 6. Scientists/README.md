<img src="https://upload.wikimedia.org/wikipedia/commons/b/bb/Scientists-schema.png" alt="Employees" width="50%" class="center"/>

1. List all the scientists' names, their projects' names, and the hours worked by that scientist on each project, in alphabetical order of project name, then scientist name.

```sql
SELECT S.Name AS ScientistName, P.Name AS ProjectName, P.Hours AS Hours
  FROM AssignTo AS AT
    INNER JOIN Scientists AS S ON S.SSN = AT.Scientist
    INNER JOIN Projects AS P ON P.Code = AT.Project 
  ORDER BY P.Name ASC, S.Name ASC
;
```
