USE testing_system_1;
SELECT CQ.CategoryID,CQ.CategoryName, count(Q.CategoryID) AS 'SL'
FROM `CategoryQuestion` CQ LEFT JOIN  `question` Q ON CQ.CategoryID = Q.CategoryID
GROUP BY (CQ.CategoryID);

SELECT CQ.CategoryID, CQ.CategoryName , Q.*
FROM `CategoryQuestion` CQ LEFT JOIN  `question` Q ON CQ.CategoryID = Q.CategoryID;

SELECT * 
FROM `group` G LEFT JOIN `groupaccount` GR ON G.GroupID = GR.GroupID
WHERE GR.AccountID IS NUll;

SELECT  D.DepartmentName,count(*) AS 'SL' FROM `account`A JOIN `department` D ON A.DepartmentID = D.DepartmentID  GROUP BY (A.DepartmentID)
HAVING `SL`=(SELECT MAX(T.SL) FROM (SELECT `departmentID`, count(*) AS 'SL' FROM `account` GROUP BY `DepartmentID`)T);


SELECT `departmentID`, count(*) AS 'SL' FROM `account` GROUP BY `DepartmentID` ;
SELECT MAX(T.SL) FROM (SELECT `departmentID`, count(*) AS 'SL' FROM `account` GROUP BY `DepartmentID`)T  ;

SELECT Fullname,A.DepartmentID, D.DepartmentName FROM `account` A LEFT JOIN `Department` D ON A.DepartmentID = D.DepartmentID;
# Phòng ban không có nhân viên nào
SELECT D.DepartmentName,D.DepartmentID 
FROM department D LEFT JOIN `account` A ON D.DepartmentID = A.DepartmentID
WHERE A.AccountID IS NULL;


SELECT D.DepartmentName,D.DepartmentID 
FROM `account` A  RIGHT JOIN department D ON D.DepartmentID = A.DepartmentID
WHERE A.AccountID IS NULL;

SELECT EQ.QuestionID,Q.Content, count(*) AS 'SL' FROM `examquestion`EQ JOIN `question` Q ON EQ.QuestionID = Q.QuestionID  GROUP BY (QuestionID)
HAVING `SL`= (SELECT MAX(T.SL) FROM (SELECT QuestionID, count(*) AS 'SL' FROM `examquestion` GROUP BY (QuestionID))T);


SELECT MAX(T.SL) FROM (SELECT QuestionID, count(*) AS 'SL' FROM `examquestion` GROUP BY (QuestionID))T ;