USE TESTING_SYSTEM_ASSIGNMENT_1;
#Question 2
select * FROM department;
#Question 3
SELECT department_Id FROM department
where department_Name Like N'Sale';
#Question 4
SELECT * FROM `account`
WHERE char_length(fullname)=(SELECT max(char_length(fullname)) from `account`);
#SELECT max(char_length(fullname)) from `account`;
#Question 5
SELECT * FROM `account`
WHERE department_ID = 3 AND 
char_length(fullname)=(SELECT max(char_length(fullname)) from `account`);
#Question 6
SELECT group_Name FROM `Group`
WHERE creatdate < '2019-12-20';
