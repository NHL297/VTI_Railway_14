create database TESTING_SYSTEM_ASSIGNMENT_1;
USE TESTING_SYSTEM_ASSIGNMENT_1;

CREATE TABLE Department(
department_ID 		INT,
department_Name 	VARCHAR(50)
);

CREATE TABLE Positionn(
position_ID 		INT,
position_Name 		VARCHAR(50)
);

CREATE TABLE Accounts(
account_ID 			INT,
email 				VARCHAR(50),
username 			VARCHAR(50),
fullname 			VARCHAR(50),
department_ID 		INT,
position_ID 		INT,
creatdate 			VARCHAR(50)
);

CREATE TABLE Groupss(
group_ID 			INT,
group_Name 			VARCHAR(50),
creator_ID 			INT,
creatdate 			VARCHAR(50)
);

CREATE TABLE GroupAccount(
group_ID 			INT,
account_ID 			INT,
joindate 			VARCHAR(50)
);

CREATE TABLE TypeQuestion(
type_ID 			INT,
type_NAME 			VARCHAR(50)
);

CREATE TABLE CategoryQuestion(
category_ID 		INT,
category_NAME 		VARCHAR(50)
);

CREATE TABLE Question(
question_ID  		INT,
content		 		VARCHAR(50),
category_ID 		INT,
type_ID 			INT,				
creator_ID			INT,			   	#id nguoi tao cau hoi
createdate			VARCHAR(50)        	#ngay tao cau hoi

);
CREATE TABLE Answer(
answer_ID 			INT,
content		 		VARCHAR(50),
question_ID  		INT,
isCorrect			bool
);

CREATE TABLE Answer(
answer_ID 			INT,
content		 		VARCHAR(50),
question_ID  		INT,
isCorrect			bool
);

CREATE TABLE Exam(
exam_ID 			INT,
code_name			VARCHAR(50),      #madethi
title		  		VARCHAR(50),
category_ID			INT,
duration			VARCHAR(50),
creator_ID			INT,
createdate			VARCHAR(50)
);
CREATE TABLE ExamQuestion(
exam_ID 			INT,			#dinh danh de thi
question_ID  		INT				#dinh danh cua cau hoi
);






