DROP DATABASE IF EXISTS `quan_ly_diem_hoc_sinh`;
/* Lenh tao Database */
CREATE DATABASE IF NOT EXISTS `quan_ly_diem_hoc_sinh`;
/* Lenh su dung Database */
USE `quan_ly_diem_hoc_sinh`;
DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student`
(
    `ID`   TINYINT UNSIGNED PRIMARY KEY,
    `Name` VARCHAR(50) NOT NULL,
    `Age` INT UNSIGNED,
    `Gender` ENUM ('Nam','Nu')
);
INSERT INTO `Student`(`ID`,`Name`,`Age`,`Gender`)
VALUES ('1','Nguyen Hoang Long','24','Nam'),
	   ('2','Hoang Trong Nho','24','Nam'),
	   ('3','Tran Thu Huong','14','Nu'),
	   ('4','Tran Quang Ngoc','25','Nam'),
	   ('5','Van Bao Linh','15','Nu');
       
SELECT * FROM student;

DROP TABLE IF EXISTS `subject`;
/* Len tao bang va cac cot du lieu cua bang--*/
CREATE TABLE `subject`
(
    `iD`   TINYINT UNSIGNED PRIMARY KEY,
    `Name` VARCHAR(50) NOT NULL
);
INSERT INTO `Subject`(`ID`,`Name`)
VALUES ('1','Toan'),
       ('2','Van'),
       ('3','Ngoai ngu'),
       ('4','Vat ly');
SELECT*FROM `subject`;
DROP TABLE IF EXISTS `StudentSubject`;
/* Len tao bang va cac cot du lieu cua bang--*/
CREATE TABLE `StudentSubject`
(
    `StudentID` TINYINT UNSIGNED,
    `SubjectID` TINYINT UNSIGNED,
    `Mark` VARCHAR(50),
    `Date` date,
    PRIMARY KEY(`StudentID`,`SubjectID`)
);
INSERT INTO `StudentSubject`(`StudentID`,`SubjectID`,`Mark`,`Date`)
VALUES ('1','1','9','2019-10-10'),
       ('1','2','10','2019-10-10'),
       ('1','3','8','2019-10-10'),
       ('2','2','8','2019-10-10'),
       ('2','3','8','2019-10-10');

##Question2
##a
SELECT `Name` FROM `subject` A LEFT JOIN `StudentSubject`B ON A.ID = B.SubjectID
WHERE B.Mark is null;
##B
SELECT `Name`,COUNT(B.SubjectID) AS SL FROM `subject` A LEFT JOIN `StudentSubject`B ON A.ID = B.SubjectID
group by(B.SubjectID)
HAVING SL >1;

DROP VIEW IF exists `SinhVienInfo`;
CREATE VIEW `SinhVienInfo` AS 
	SELECT B.StudentID, B.SubjectID, A.`Name`AS StudentName, A.Age,A.Gender,B.Mark,C.`Name`AS SubjectName ,B.`Date` FROM `Student` A right JOIN `studentsubject` B ON A.ID = B.StudentID 
	LEFT JOIN `subject` C ON B.SubjectID = C.ID;

##4
DELiMITER $$

DROP TRIGGER IF EXISTS SubjectUpdateID;
DELIMITER $$
CREATE TRIGGER SubjectUpdateID
AFTER UPDATE ON `SUBJECT`
FOR EACH ROW
BEGIN
UPDATE `StudentSubject`
	SET `SubjectID` = NEW.ID
	WHERE  SubjectID =OLD.ID ;
END$$
DELIMITER ;
BEGIN WORK;

UPDATE `Subject`
SET ID = 9
WHERE ID=1; 

ROLLBACK;

DROP TRIGGER IF EXISTS StudentDeleteID;
DELIMITER $$
CREATE TRIGGER StudentDeleteID
AFTER DELETE ON `Student`
FOR EACH ROW
BEGIN
DELETE FROM StudentSubject
WHERE  `StudentID` = OLD.ID;
END$$
DELIMITER ;

BEGIN WORK;
DELETE FROM `Student`
WHERE  ID = 3 ;
ROLLBACK;

DROP PROCEDURE IF EXISTS `delete_student_info`;
DELIMITER $$
CREATE PROCEDURE delete_student_info  (IN_studentName VARCHAR(50))
BEGIN
DECLARE V_studentName VARCHAR(50);
SELECT `Name` INTO V_studentName
FROM `Student`
WHERE `Name` LIKE CONCAT('%',IN_studentName,'%');
DELETE FROM `Student`
WHERE V_studentName = `Name`;

IF IN_studentName ='*' THEN
DELETE FROM `Student`;
END IF;

END$$
DELIMITER ;

Call DELETE_STUDENT_INFO ('Van Bao Linh');
