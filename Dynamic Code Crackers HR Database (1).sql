/*
EducationLevel 
| **Rating** | **Education Level Description**                |
| ---------- | ---------------------------------------------- |
| **1**      | High School Diploma or Less                    |
| **2**      | Associate Degree / Some College                |
| **3**      | Bachelor’s Degree (Undergraduate)              |
| **4**      | Master’s Degree                                |
| **5**      | Doctorate or Professional Degree (PhD, MD, JD) |

JobInvolvement
| **Rating** | **Description**                                                                              |
| ---------- | -------------------------------------------------------------------------------------------- |
| **1**      | Very Low Involvement – Shows minimal interest or commitment to work tasks. Often disengaged. |
| **2**      | Low Involvement – Occasionally engaged, but lacks consistency or motivation.                 |
| **3**      | Moderate Involvement – Meets expectations, shows some interest, but not highly driven.       |
| **4**      | High Involvement – Generally enthusiastic, takes initiative, and is reliable.                |
| **5**      | Very High Involvement – Highly committed, self-driven, and often goes above and beyond.      |

EnvironmentSatisfaction
| Rating | Meaning                    |
| ------ | -------------------------- |
| 1      | Very Unsatisfied           |
| 2      | Unsatisfied                |
| 3      | Neutral / Fairly Satisfied |
| 4      | Satisfied                  |
| 5      | Very Satisfied             |

JobSatisfaction
| Rating | Meaning                    | 
| ------ | -------------------------- |
| 1      | Very Dissatisfied          |
| 2      | Dissatisfied               |
| 3      | Neutral / Fairly Satisfied |
| 4      | Satisfied                  |
| 5      | Very Satisfied             |

PerformanceRating
| Rating | Meaning                               |
| ------ | ------------------------------------- |
| 1      | Unsatisfactory                        |
| 2      | Needs Improvement                     |
| 3      | Meets Expectations / Satisfactory     |
| 4      | Exceeds Expectations                  |
| 5      | Outstanding / Exceptional Performance |

RelationshipSatisfaction
| Rating | Meaning                    |
| ------ | -------------------------- |
| 1      | Very Dissatisfied          |
| 2      | Dissatisfied               |
| 3      | Neutral / Fairly Satisfied |
| 4      | Satisfied                  |
| 5      | Very Satisfied             |

| JobLevel | Meaning          Hourly Rate             | Example Roles                        |
| -------- | ----------------------------- | ------------------------------------ |
| 1        | Entry-Level   ₦800 – ₦1,500   | Intern, Assistant, Trainee           |
| 2        | Junior Staff  ₦1,500 – ₦3,500 | Analyst I, Associate, Coordinator    |
| 3        | Mid-Level     ₦3,500 – ₦7,000 | Senior Analyst, Team Lead            |
| 4        | Managerial    ₦7,000 – ₦15,000+| Manager, Supervisor, Department Head |
| 5        | Executive / Senior Leadership ₦5,000 – ₦20,000+| Director, VP, C-Level (CEO, CFO)     |

*/
CREATE TABLE HRDatabase (
EmployeeID Serial Primary Key,
FirstName Varchar(50),
LastName Varchar (50),	
Age	Int,
MaritalStatus Varchar(20),
Gender Varchar(10),
Department Varchar(50),
EducationLevel Int,
EducationField Varchar (50),
HourlyRate	Numeric (10, 2),
StandardHours Int,
AVGActualHours Numeric (10, 2),
Overtimehours Int,
JobLevel Int,
JobRole Varchar (50),
RevenueGenerated Numeric (10, 2),
OverTime Boolean,
EnvironmentSatisfaction Int,
JobSatisfaction Int,
NumberofCompaniesWorked	Int,
PerformanceRating	Int,
RelationshipSatisfaction Int,	
TotalWorkingYears Int,
TrainingTimesLastYear Int,
YearsAtCompany Int,
YearsInCurrentRole	Int,
YearsSinceLastPromotion	Int,
YearsWithCurrentManager	Int
);

DROP TABLE HRDatabase;

SELECT * FROM HRDatabase;


INSERT INTO HRDatabase(EmployeeID, FirstName, LastName, Age, MaritalStatus, Gender, Department, EducationLevel, EducationField, HourlyRate, StandardHours, AVGActualHours, OvertimeHours,
JobLevel, JobRole, RevenueGenerated, OverTime, EnvironmentSatisfaction, JobSatisfaction,
NumberofCompaniesWorked, PerformanceRating, RelationshipSatisfaction, 
TotalWorkingYears, TrainingTimesLastYear, YearsAtCompany, YearsInCurrentRole, 
YearsSinceLastPromotion, YearsWithCurrentManager)
VALUES
(1001, 'Jennifer', 'Benson', 41, 'Single', 'Female', 'Sales', 2, 'Computer Science', 6999, 40, 37.5, 2, 3, 'Sales Executive', 196479,'Yes', 2, 4, 8, 4, 3, 8, 0, 1, 1, 0, 1),
(1002, 'Fredrick', 'Bush', 49, 'Married', 'Male', 'Technology', 1, 'Information Technology',3500, 40, 40, 0,  2, 'Junior Software Developer', 24907, 'No', 1, 2, 1, 4, 3, 10, 2, 10, 2, 2, 7),
(1003, 'Houston', 'Storm', 37, 'Single', 'Male', 'Technology', 2, 'Mathematics', 1500, 40, 40, 4, 1, 'IT Support Technician', 239896,'Yes', 1, 4, 6, 3, 2, 7, 2, 2, 3, 4, 3),
(1004, 'Anita', 'Bush', 33, 'Married', 'Female', 'Technology', 4, 'Economics', 3500, 40, 35, 4, 2, 'Data Analyst', 21859,'Yes', 2, 3, 1, 3, 3, 8, 1, 8, 7, 3, 0),
(1005, 'Ayo', 'Adeleke', 46, 'Single', 'Female', 'Sales', 4, 'Marketing', 8000, 40, 30, 0, 4, 'Manager', 2282092, 'No', 2, 1, 3, 3, 4, 12, 1, 2, 2, 2, 1),
(1006, 'Frank', 'Dara', 23, 'Divorced', 'Male', 'Sales', 1, 'Technical Degree', 1000,40, 37.5, 0, 1, 'Sales Representative',95918, 'No', 1, 2, 3, 3, 3, 4, 1, 3, 0, 0, 0),
(1007, 'Sam', 'Francis', 45, 'Single', 'Male', 'Human Resources', 4, 'Software Engineering', 1000, 40, 40, 2, 1, 'Human Resources', 8318, 'No', 1, 4, 1, 3, 1, 5, 2, 3, 6, 3, 4),
(1008, 'Sayo', 'Adu', 39, 'Married', 'Female', 'Human Resources', 3, 'Human Resources', 2000, 40, 37.5, 0, 2, 'Human Resources', 18767,'No', 2, 3, 9, 3, 3, 8, 1, 3, 8, 3, 6),
(1009, 'Ralph', 'Joko', 41, 'Divorced', 'Male', 'Human Resources', 4, 'Marketing', 9000, 40, 20, 0, 4, 'Manager', 22890822, 'No', 4, 2, 3, 3, 4, 5, 2, 2, 2, 2, 1),
(1010, 'Dolapo', 'Abiodun', 28, 'Divorced', 'Female', 'Sales', 3, 'Technical Degree', 3500, 40, 45, 3, 2, 'Sales Representative', 95018,'No', 2, 1, 1, 2, 2, 3, 1, 5, 0, 5, 2),
(1011, 'Tobi', 'Doherty', 31, 'Single', 'Male', 'Technology', 4, 'Computer Engineering', 7000, 40,37.5, 2, 4, 'Senior Software Engineer', 3876787,'No', 1, 7, 3, 4, 4, 7, 2, 3, 6, 3, 1),
(1012, 'Laide', 'Bamidele', 25, 'Married', 'Female', 'Human Resources', 2, 'Marketing', 800, 40, 40, 2, 1, 'Human Resources', 4567, 'Yes', 3, 1, 2, 3, 3, 2, 1, 0, 1, 1, 1);
 

SELECT * FROM HRDatabase;

CREATE TABLE Employee_Data (
EmployeeID Serial Primary Key,
FirstName Varchar(50),
LastName Varchar (50),	
Age	Int,
MaritalStatus Varchar(20),
Gender Varchar(10),
Department Varchar(50),
EducationLevel Int,
EducationField Varchar (50)
);

DROP TABLE Employee_Data;

INSERT INTO Employee_Data(EmployeeID, FirstName, LastName, Age, MaritalStatus, Gender, Department, EducationLevel, EducationField)
VALUES
(1001, 'Jennifer', 'Benson', 41, 'Single', 'Female', 'Sales', 2, 'Computer Science'),
(1002, 'Fredrick', 'Bush', 49, 'Married', 'Male', 'Technology', 3, 'Information Technology'),
(1003, 'Houston', 'Storm', 37, 'Single', 'Male', 'Technology', 2, 'Mathematics'),
(1004, 'Anita', 'Bush', 33, 'Married', 'Female', 'Technology', 4, 'Economics'),
(1005, 'Ayo', 'Adeleke', 46, 'Single', 'Female', 'Sales', 4, 'Marketing'), 
(1006, 'Frank', 'Dara', 23, 'Divorced', 'Male', 'Sales', 1, 'Technical Degree'),
(1007, 'Sam', 'Francis', 45, 'Single', 'Male', 'Human Resources', 4, 'Software Engineering'),
(1008, 'Sayo', 'Adu', 39, 'Married', 'Female', 'Human Resources', 3, 'Human Resources'),
(1009, 'Ralph', 'Joko', 41, 'Divorced', 'Male', 'Human Resources', 4, 'Marketing'), 
(1010, 'Dolapo', 'Abiodun', 28, 'Divorced', 'Female', 'Sales', 3, 'Technical Degree'), 
(1011, 'Tobi', 'Doherty', 31, 'Single', 'Male', 'Technology', 4, 'Computer Engineering'),  
(1012, 'Laide', 'Bamidele', 25, 'Married', 'Female', 'Human Resources', 2, 'Marketing');


SELECT * FROM Employee_Data;

SELECT COUNT()

/*Queries
Head Count
Demograh (Age)
Count employees in each department
Education >BSC
*/


CREATE TABLE Payroll(		
Payroll_ID	SERIAL PRIMARY KEY,
EmployeeID Int,
HourlyRate	Numeric (10, 2),
StandardHours Int,
AVGActualHours Numeric (10, 2),
Overtimehours Int,
JobLevel Int,
JobRole Varchar (50),
RevenueGenerated Numeric (10, 2),
OverTime Boolean,
FOREIGN KEY (EmployeeID) REFERENCES Employee_Data(EmployeeID)
);

DROP TABLE Payroll;

SELECT *  FROM Payroll;

INSERT INTO Payroll(EmployeeID, HourlyRate, StandardHours, AVGActualHours, OvertimeHours,
JobLevel, JobRole, RevenueGenerated, OverTime)
VALUES
(1001, 6999, 40, 37.5, 2, 3, 'Sales Executive', 196479,'Yes'),
(1002, 3500, 40, 40, 0,  2, 'Junior Software Developer', 24907, 'No'),
(1003, 1500, 40, 40, 4, 1, 'IT Support Technician', 239896,'Yes'),
(1004, 3500, 40, 35, 4, 2, 'Data Analyst', 21859,'Yes'),
(1005, 8000, 40, 30, 0, 4, 'Manager', 2282092, 'No'),
(1006, 1000,40, 37.5, 0, 1, 'Sales Representative',95918, 'No'),
(1007, 1000, 40, 40, 2, 1, 'Human Resources', 8318, 'No'),
(1008, 2000, 40, 37.5, 0, 2, 'Human Resources', 18767,'No'),
(1009, 9000, 40, 20, 0, 4, 'Manager', 22890822, 'No'),
(1010, 3500, 40, 45, 3, 2, 'Sales Representative', 95018,'No'),
(1011, 7000, 40,37.5, 2, 4, 'Senior Software Engineer', 3876787,'No'), 
(1012, 800, 40, 40, 2, 1, 'Human Resources', 4567, 'Yes');
/*| JobLevel | Meaning                       | Example Roles                        |
| -------- | ----------------------------- | ------------------------------------ |
| 1        | Entry-Level   ₦800 – ₦1,500   | Intern, Assistant, Trainee           |
| 2        | Junior Staff  ₦1,500 – ₦3,500 | Analyst I, Associate, Coordinator    |
| 3        | Mid-Level     ₦3,500 – ₦7,000 | Senior Analyst, Team Lead            |
| 4        | Managerial    ₦7,000 – ₦15,000+| Manager, Supervisor, Department Head |
| 5        | Executive / Senior Leadership ₦5,000 – ₦20,000+| Director, VP, C-Level (CEO, CFO)     |
*/
SELECT * FROM Payroll;










/* Queries
Job level >2
EnvironmentSatisfaction < 2
Tax & Pension
Overtime(Deserves)
Revenue generated for Bonus
*/

CREATE TABLE Employee_Performance(		
PerfromanceReviewID SERIAL PRIMARY KEY,
EmployeeID Int,
EnvironmentSatisfaction Int,
JobSatisfaction Int,
NumberofCompaniesWorked	Int,
PerformanceRating	Int,
RelationshipSatisfaction Int,	
TotalWorkingYears Int,
TrainingTimesLastYear Int,
YearsAtCompany Int,
YearsInCurrentRole	Int,
YearsSinceLastPromotion	Int,
YearsWithCurrentManager	Int,
FOREIGN KEY (EmployeeID) REFERENCES Employee_Data(EmployeeID)
);

DROP TABLE Employee_Performance;

SELECT * FROM Employee_Performance

INSERT INTO Employee_Performance(EmployeeID, EnvironmentSatisfaction, JobSatisfaction,
NumberofCompaniesWorked, PerformanceRating, RelationshipSatisfaction, 
TotalWorkingYears, TrainingTimesLastYear, YearsAtCompany, YearsInCurrentRole, 
YearsSinceLastPromotion, YearsWithCurrentManager)
VALUES
(1001, 2, 4, 8, 4, 3, 8, 0, 1, 1, 0, 1),
(1002, 1, 2, 1, 4, 3, 10, 2, 10, 2, 2, 7),
(1003, 1, 4, 6, 3, 2, 7, 2, 2, 3, 4, 3),
(1004, 2, 3, 1, 3, 3, 8, 1, 8, 7, 3, 0),
(1005, 2, 1, 3, 3, 4, 12, 1, 2, 2, 2, 1),
(1006, 1, 2, 3, 3, 3, 4, 1, 3, 0, 0, 0),
(1007, 1, 4, 1, 3, 1, 5, 2, 3, 6, 3, 4),
(1008, 2, 3, 9, 3, 3, 8, 1, 3, 8, 3, 6),
(1009, 4, 2, 3, 3, 4, 5, 2, 2, 2, 2, 1),
(1010, 2, 1, 1, 2, 2, 3, 1, 5, 0, 5, 2),
(1011, 1, 7, 3, 4, 4, 7, 2, 3, 6, 3, 1),
(1012, 3, 1, 2, 3, 3, 2, 1, 0, 1, 1, 1);

SELECT EmployeeID, JobRole, HourlyRate
FROM Payroll
WHERE HourlyRate > 5000;

--AverageHours by Job Role

SELECT JobRole, AVG(AVGActualHours) AS Avg_Actual_Hours
FROM Payroll
GROUP BY JobRole;

--No of Employee by Job Level
SELECT JobLevel, COUNT(*) AS Employee_Count
FROM Payroll
GROUP BY JobLevel
ORDER BY JobLevel;

--Identify Top Revenue Generators by Job Role

SELECT JobRole, SUM(RevenueGenerated) AS TotalRevenue
FROM Payroll
GROUP BY JobRole

--Performance vs. Training Correlation
SELECT TrainingTimesLastYear, AVG(PerformanceRating) AS AvgPerformance
FROM Employee_Performance
GROUP BY TrainingTimesLastYear
ORDER BY TrainingTimesLastYear;

--Education Level vs. Revenue Generated

SELECT ed.EducationLevel, AVG(p.RevenueGenerated) AS AvgRevenue
FROM Employee_Data ed
JOIN Payroll p ON ed.EmployeeID = p.EmployeeID
GROUP BY ed.EducationLevel
ORDER BY ed.EducationLevel;

--Does More Training Mean Better Performance?
SELECT TrainingTimesLastYear, AVG(PerformanceRating) AS AveragePerformance
FROM Employee_Performance
GROUP BY TrainingTimesLastYear
ORDER BY TrainingTimesLastYear;

--Who Hasn’t Been Promoted in a Long Time?
SELECT ed.FirstName, ed.LastName, ep.YearsSinceLastPromotion
FROM Employee_Data ed
JOIN Employee_Performance ep ON ed.EmployeeID = ep.EmployeeID
WHERE ep.YearsSinceLastPromotion > 3

--Find Employees Who’ve Worked for Many Companies
SELECT 
    ed.FirstName, 
    ed.LastName, 
    ep.NumberofCompaniesWorked
FROM 
    Employee_Data ed
JOIN 
    Employee_Performance ep 
    ON ed.EmployeeID = ep.EmployeeID
WHERE 
    ep.NumberofCompaniesWorked > 3;

--How Many Men and Women Are in Each Job Role?
	SELECT 
    JobRole, 
    Gender, 
    COUNT(*) AS NumberOfPeople
FROM
    Employee_Data ed
JOIN 
    Payroll p 
    ON ed.EmployeeID = p.EmployeeID
GROUP BY 
    JobRole, 
    Gender
ORDER BY 
    JobRole;

--How Long Do People Stay at the Company Based on Their Age?

SELECT
  CASE 
    WHEN Age < 30 THEN 'Under 30'
    WHEN Age BETWEEN 30 AND 39 THEN '30-39'
    WHEN Age BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50+'
  END AS AgeGroup,
  AVG(YearsAtCompany) AS AverageYears
FROM 
  Employee_Data ed
JOIN 
  Employee_Performance ep 
  ON ed.EmployeeID = ep.EmployeeID
GROUP BY 
  AgeGroup;


