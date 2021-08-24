##Question 2
DROP PROCEDURE IF EXISTS get_acc_of_group;
DELIMITER $$
CREATE PROCEDURE get_acc_of_group (IN group_ID MEDIUMINT UNSIGNED)
BEGIN

SELECT G.GroupID, G.GroupName, COUNT(GA.GroupID) AS SL_ACCOUNT
FROM `GROUP` AS G
LEFT JOIN `GROUPACCOUNT` AS GA
ON G.GroupID = GA.GroupID
WHERE g.groupID = group_ID
GROUP BY (G.GroupID)
HAVING g.groupID = group_ID;

END$$
DELIMITER ;

CALL get_acc_of_group(8);
##Question 4
call get_type_question(@typeQuestion);
SELECT @typeQuestion;
##Question 5
call get_type_question(@typeQuestion);
SELECT @typeQuestion;
SELECT TypeName FROM `typequestion`
WHERE TypeID = @typeQuestion;
##Question 6
DROP PROCEDURE IF EXISTS `question_6`;
DELIMITER $$
CREATE PROCEDURE `question_6` (IN nhap_chuoi VARCHAR(50))
BEGIN
	SELECT  G.GroupName, A.Username FROM `groupaccount` GA JOIN `group` G ON GA.GroupID = G.GroupID
    JOIN `account` A ON GA.AccountID = A.AccountID
    WHERE G.GroupName LIKE nhap_chuoi OR A.Username LIKE nhap_chuoi;

END$$
DELIMITER ;
SELECT  G.GroupName, A.Username FROM `groupaccount` GA JOIN `group` G ON GA.GroupID = G.GroupID
    JOIN `account` A ON GA.AccountID = A.AccountID
    WHERE G.GroupName = 'Nhom 1';
CALL question_6('vti1');
##Question 7
DROP PROCEDURE IF EXISTS `question_7`;
DELIMITER $$
CREATE PROCEDURE `question_7` (IN v_fullname VARCHAR(50), IN v_email VARCHAR(50))
BEGIN
	DECLARE user_name VARCHAR(50) DEFAULT SUBSTRING_INDEX(v_email,'@',1);
    DECLARE Position_ID TINYINT UNSIGNED DEFAULT 1;
    DECLARE Department_ID TINYINT UNSIGNED DEFAULT null;
	DECLARE create_date DATETIME DEFAULT NOW();
    
    INSERT INTO `account`(Email,Username,Fullname,DepartmentID,PositionID,CreateDate)
				VALUE(v_email,user_name,v_fullname,Department_ID,Position_ID,create_date);
END$$
DELIMITER ;

CALL question_7('hoanglong@gmail.com','Hoang Long');
##Question 9
DROP PROCEDURE IF EXISTS `question_9`;
DELIMITER $$
CREATE PROCEDURE `question_9` (IN exam_id INT)
BEGIN
    DELETE FROM `examquestion` WHERE ExamID = exam_id;
    DELETE FROM `exam` WHERE ExamID = exam_ID;
    
END$$
DELIMITER ;
CALL question_9();

## Question 10:

DROP PROCEDURE IF EXISTS question_10;
DELIMITER $$
CREATE PROCEDURE question_10()
BEGIN
DECLARE i tinyint unsigned  DEFAULT 1; 
DECLARE v_dem1 tinyint;
DECLARE v_dem2 tinyint;
DECLARE v_print_del_info_exam VARCHAR(50);
DECLARE v_idreal tinyint;

## TẠO 1 BẢNG ẢO ĐỂ LẤY TỪNG GIÁ TRỊ TYPEID TÌM ĐƯỢC:
DROP TABLE IF EXISTS bang_ao;
create table IF NOT EXISTS bang_ao     (
										id_ao 	 tinyint PRIMARY KEY auto_increment,
										id_chuan tinyint );

## CHÈN TYPEID TÌM ĐƯỢC VÀO BẢNG ẢO
INSERT INTO bang_ao (`id_chuan`)
SELECT ExamID FROM `EXAM`
WHERE YEAR(NOW()) - YEAR(CreateDate) > 3;
-- SELECT * FROM BANG_AO;

SELECT COUNT(*) INTO v_dem1
FROM bang_ao;

SELECT count(ExamID) into v_dem2 from `examquestion`
where ExamID IN (select id_chuan from bang_ao) ;

WHILE (i<=v_dem1) DO
	SELECT id_chuan INTO v_idreal
    FROM bang_ao
	WHERE id_ao = i;
	CALL question_9(v_idreal);
	SET i=i+1;
END WHILE;
DROP TABLE IF EXISTS bang_ao;
## in câu lệnh xóa:
SELECT CONCAT("Deleted ",v_dem1," Row(s) in Exam ", "and ",v_dem2 ," Row(s) in ExamQuestion") as Result;

END$$
DELIMITER ;


CALL question_10();

SELECT ExamID FROM `EXAM`
WHERE YEAR(NOW()) - YEAR(CreateDate) > 3;




## Question 11:
DROP PROCEDURE IF EXISTS question_11;
DELIMITER $$
CREATE PROCEDURE `question_11` ( IN department_name varchar(50))
BEGIN
DECLARE department_id TINYINT UNSIGNED;
DECLARE dept_name VARCHAR(50);

SELECT 
    DepartmentID
INTO department_id FROM
    `department`
WHERE
    DepartmentName = department_name;

UPDATE `account` AS A 
SET 
    A.DepartmentID = '9'
WHERE
    A.DepartmentID = department_id;

DELETE FROM `DEPARTMENT` 
WHERE
    DepartmentName = department_name;

SELECT 
    A.AccountID, A.Username, A.Fullname, D.DepartmentName
FROM
    `account` AS A
        RIGHT JOIN
    `department` AS D USING (DepartmentID)
WHERE
    DepartmentID = '9';
END$$
DELIMITER ;

CALL question_11('Phong Ky Thuat 1');
SET SQL_SAFE_UPDATES = 1;

# Ví dụ xóa account có departmentid = 1 và in ra số lượng account đã xóa








##question 12:

/*
DROP PROCEDURE IF EXISTS QUESTION12;
DELIMITER $$
CREATE PROCEDURE QUESTION12 ()
BEGIN
DROP TABLE IF EXISTS TEMPORARY_TABLE;
CREATE TABLE TEMPORARY_TABLE (
								`MONTH` TINYINT PRIMARY KEY AUTO_INCREMENT,
								`CREATEDATE`DATETIME );
INSERT INTO   TEMPORARY_TABLE 
							 (CREATEDATE)
VALUE                        ('2021-01-01'),     
							 ('2021-02-01'),
							 ('2021-03-01'),
							 ('2021-04-01'),
							 ('2021-05-01'),
							 ('2021-06-01'),
							 ('2021-07-01'),
							 ('2021-08-01'),
							 ('2021-09-01'),
							 ('2021-10-01'),
							 ('2021-11-01'),
							 ('2021-12-01');
-- SELECT * FROM   TEMPORARY_TABLE        

SELECT   TT.`MONTH`, COUNT(Q.CreateDate) AS SL_QUES
FROM 
QUESTION 		AS Q
RIGHT JOIN  
TEMPORARY_TABLE AS TT   
ON MONTH(Q.CREATEDATE) = (TT.`MONTH`)
AND YEAR(Q.CREATEDATE) = YEAR (NOW())
GROUP BY MONTH(TT.`CreateDate`);              
DROP TABLE IF EXISTS TEMPORARY_TABLE;
END$$
DELIMITER ;
*/

##CALL QUESTION12();