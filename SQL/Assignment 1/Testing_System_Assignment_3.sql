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
SELECT * FROM `group`;
SELECT * FROM `account`;
SELECT `group_ID`,`group_Name` FROM `group` G JOIN `account` A ON G.creator_ID = A.account_ID;
SELECT G.* FROM `group` G WHERE  creator_ID NOT IN (16,19);
SELECT G.* FROM `group` G WHERE  creator_ID IN (16,19);
SELECT G.* FROM `group` G WHERE  creator_ID != 17;
SELECT G.* FROM `group` G WHERE  group_Name LIKE 'Ăn chơi%';
SELECT * FROM `group` order by group_ID;
SELECT  sum(position_ID) FROM `account` ;
SELECT * FROM `account` order by department_ID, position_ID;
SELECT count(distinct creator_ID)  FROM `group`;

SELECT creator_ID, COUNT(creator_ID) AS 'Soluong' from `group` group by (creator_ID);
SELECT ans.question_ID,count(ans.question_ID)  FROM `answer` AS ans  
GROUP BY ans.question_ID HAVING count(ans.question_ID) >= 4;
SELECT code_Name FROM `exam` AS ex WHERE ex.duration >=60 AND ex.createdate < '2019-12-20';
SELECT * FROM `group` ORDER BY creatdate DESC LIMIT 5;
SELECT count(ac.account_ID)  FROM `account` AS ac GROUP BY ac.department_ID
HAVING ac.department_ID = 2;
SELECT * FROM `account` WHERE fullname LIKE  'D%O';
SET SQL_SAFE_UPDATES=0;
DELETE FROM `exam`
WHERE createdate < '2019-12-20';
DELETE FROM `question`
WHERE content LIKE 'Câu hỏi';
UPDATE `account`
SET fullname = 'Nguyễn Bá Lộc', email = 'loc.nguyenba@vti.com.vn'
WHERE account_ID = 16;


