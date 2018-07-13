<img src="https://upload.wikimedia.org/wikipedia/commons/b/b8/Sql_hospital.png" alt="Employees"/>


1. Obtain the names of all physicians that have performed a medical procedure they have never been certified to perform.

```sql
SELECT Name 
  FROM Physician 
  WHERE EmployeeID IN 
   (
     SELECT Physician
       FROM Undergoes U
       WHERE NOT EXISTS 
        (
           SELECT *
             FROM Trained_In 
             WHERE Treatment = Procedure 
               AND Physician = U.Physician
        )
   )
;
```

2. Same as the previous query, but include the following information in the results: Physician name, name of procedure, date when the procedure was carried out, name of the patient the procedure was carried out on.

```sql
SELECT P.Name AS Physician, Pr.Name AS Procedure, U.Date, Pt.Name AS Patient 
  FROM Physician P, Undergoes U, Patient Pt, Procedure Pr
  WHERE U.Patient = Pt.SSN
    AND U.Procedure = Pr.Code
    AND U.Physician = P.EmployeeID
    AND NOT EXISTS 
              (
                SELECT * FROM Trained_In T
                WHERE T.Treatment = U.Procedure 
                AND T.Physician = U.Physician
              );
```

3. Obtain the names of all physicians that have performed a medical procedure that they are certified to perform, but such that the procedure was done at a date (Undergoes.Date) after the physician's certification expired (Trained_In.CertificationExpires).

```sql
SELECT Name 
  FROM Physician 
 WHERE EmployeeID IN 
       (
         SELECT Physician FROM Undergoes U 
          WHERE Date > 
               (
                  SELECT CertificationExpires 
                    FROM Trained_In T 
                   WHERE T.Physician = U.Physician 
                     AND T.Treatment = U.Procedure
               )
       );
```

4. Same as the previous query, but include the following information in the results: Physician name, name of procedure, date when the procedure was carried out, name of the patient the procedure was carried out on, and date when the certification expired.

```sql
SELECT P.Name AS Physician, Pr.Name AS Procedure, U.Date, Pt.Name AS Patient, T.CertificationExpires
  FROM Physician P, Undergoes U, Patient Pt, Procedure Pr, Trained_In T
  WHERE U.Patient = Pt.SSN
    AND U.Procedure = Pr.Code
    AND U.Physician = P.EmployeeID
    AND Pr.Code = T.Treatment
    AND P.EmployeeID = T.Physician
    AND U.Date > T.CertificationExpires;
```

5. Obtain the information for appointments where a patient met with a physician other than his/her primary care physician. Show the following information: Patient name, physician name, nurse name (if any), start and end time of appointment, examination room, and the name of the patient's primary care physician.

```sql
SELECT Pt.Name AS Patient, Ph.Name AS Physician, N.Name AS Nurse, A.Start, A.End, A.ExaminationRoom, PhPCP.Name AS PCP
  FROM Patient Pt, Physician Ph, Physician PhPCP, Appointment A LEFT JOIN Nurse N ON A.PrepNurse = N.EmployeeID
 WHERE A.Patient = Pt.SSN
   AND A.Physician = Ph.EmployeeID
   AND Pt.PCP = PhPCP.EmployeeID
   AND A.Physician <> Pt.PCP;
```

6. The Patient field in Undergoes is redundant, since we can obtain it from the Stay table. There are no constraints in force to prevent inconsistencies between these two tables. More specifically, the Undergoes table may include a row where the patient ID does not match the one we would obtain from the Stay table through the Undergoes.Stay foreign key. Select all rows from Undergoes that exhibit this inconsistency.

```sql
SELECT * FROM Undergoes U
 WHERE Patient <> 
   (
     SELECT Patient FROM Stay S
      WHERE U.Stay = S.StayID
   );
```

7. Obtain the names of all the nurses who have ever been on call for room 123.

```sql
SELECT N.Name FROM Nurse N
 WHERE EmployeeID IN
   (
     SELECT OC.Nurse FROM On_Call OC, Room R
      WHERE OC.BlockFloor = R.BlockFloor
        AND OC.BlockCode = R.BlockCode
        AND R.Number = 123
   );
```

8. The hospital has several examination rooms where appointments take place. Obtain the number of appointments that have taken place in each examination room.

> N.b. The solution below fails in MS `SQL Server Management Studio`, with the following message:

```
Msg 306, Level 16, State 2, Line 473
The text, ntext, and image data types cannot be compared or sorted, except when using IS NULL or LIKE operator.
```

```sql
SELECT ExaminationRoom, COUNT(AppointmentID) AS Number
  FROM Appointment
  GROUP BY ExaminationRoom
;
```

9. Obtain the names of all patients (also include, for each patient, the name of the patient's primary care physician), such that \emph{all} the following are true:
    - The patient has been prescribed some medication by his/her primary care physician.
    - The patient has undergone a procedure with a cost larger that $5,000
    - The patient has had at least two appointment where the nurse who prepped the appointment was a registered nurse.
    - The patient's primary care physician is not the head of any department.

```sql
SELECT Pt.Name, PhPCP.Name FROM Patient Pt, Physician PhPCP
 WHERE Pt.PCP = PhPCP.EmployeeID
   AND EXISTS
       (
         SELECT * FROM Prescribes Pr
          WHERE Pr.Patient = Pt.SSN
            AND Pr.Physician = Pt.PCP
       )
   AND EXISTS
       (
         SELECT * FROM Undergoes U, Procedure Pr
          WHERE U.Procedure = Pr.Code
            AND U.Patient = Pt.SSN
            AND Pr.Cost > 5000
       )
   AND 2 <=
       (
         SELECT COUNT(A.AppointmentID) FROM Appointment A, Nurse N
          WHERE A.PrepNurse = N.EmployeeID
            AND N.Registered = 1
       )
   AND NOT Pt.PCP IN
       (
          SELECT Head FROM Department
       );
```