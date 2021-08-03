create database TESTING_SYSTEM_ASSIGNMENT_1;
USE TESTING_SYSTEM_ASSIGNMENT_1;
#DROP TABLE IF EXISTS Department;
CREATE TABLE Department(
department_ID 		INT PRIMARY KEY,
department_Name 	VARCHAR(50)
);
#DROP TABLE IF EXISTS Positionn;
CREATE TABLE `Position`(
position_ID 		INT PRIMARY KEY,
position_Name 		VARCHAR(50)
);
#DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account`(
account_ID 			INT  UNSIGNED PRIMARY KEY AUTO_INCREMENT,
email 				VARCHAR(50) UNIQUE,
username 			VARCHAR(50) NOT NULL UNIQUE KEY,
fullname 			VARCHAR(50),
position_ID 		INT,
creatdate 			DATE,
department_ID 		INT UNSIGNED
#CONSTRAINT FK_DpID foreign key (`DpID`) references Department(department_ID)
);
#DROP TABLE IF EXISTS Groupss;
CREATE TABLE `Group`(
group_ID 			INT PRIMARY KEY,
group_Name 			VARCHAR(50),
creator_ID 			INT,
creatdate 			DATE
);
#DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount(
group_ID 			INT PRIMARY KEY,
account_ID 			INT,
joindate 			DATE
);
#DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion(
type_ID 			INT PRIMARY KEY auto_increment,
type_NAME 			VARCHAR(50)
);
#DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion(
category_ID 		INT PRIMARY KEY auto_increment,
category_NAME 		VARCHAR(50)
);
#DROP TABLE IF EXISTS Question;
CREATE TABLE Question(
question_ID  		INT PRIMARY KEY auto_increment,
content		 		VARCHAR(50),
category_ID 		INT,
type_ID 			INT,				
creator_ID			INT,			   	#id nguoi tao cau hoi
createdate			DATE        	#ngay tao cau hoi
);
#DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
answer_ID 			INT PRIMARY KEY auto_increment,
content		 		VARCHAR(50),
question_ID  		INT,
isCorrect			VARCHAR(50)
);
#DROP TABLE IF EXISTS Exam;
CREATE TABLE Exam(
exam_ID 			INT PRIMARY KEY auto_increment,
code_name			VARCHAR(50),      #madethi
title		  		VARCHAR(50),
category_ID			INT,
duration			VARCHAR(50),
creator_ID			INT,
createdate			DATE
);
DROP TABLE IF EXISTS ExamQuestion;
CREATE TABLE ExamQuestion(
exam_ID 			INT ,			#dinh danh de thi
question_ID  		INT				#dinh danh cua cau hoi
);






