USE TESTING_SYSTEM_ASSIGNMENT_1;
#SELECT * FROM Department
INSERT INTO Department(department_ID, department_Name)
VALUES
						(1,			N'Marketing'),
                        (2,			N'Sale'		),
                        (3,			N'Bảo vệ'	),
                        (4,			N'Nhân sự'	),
                        (5,			N'Kỹ thuật'	),
                        (6,			N'Tài Chính'),
                        (7,			N'Phó giám đốc'),
                        (8,			N'Giám đốc'	),
						(9,			N'Thư ký'	),
						(10,		N'Bán hàng'	);
INSERT INTO `Position`(position_ID,position_Name )
VALUES
						(1,			N'Dev'),
                        (2,			N'Test'		),
                        (3,			N'Scrum Master'	),
                        (4,			N'PM'	),
                        (5,			N'PV'	);

INSERT INTO `testing_system_assignment_1`.`account` (`email`, `username`, `fullname`, `position_ID`, `creatdate`, `department_ID`) 
VALUES 
('abcd@gmail.com', 'aacount2', 'Nguyễn Mai Linh', '2', '2020-12-12', '1'),
('abcde@gmail.com', 'aacount3', 'Trần Thị Mai', '2', '2020-12-12', '1'),
('abcdef@gmail.com', 'aacount4', 'Mai Thúy', '2', '2020-12-12', '1'),
('abcdefg@gmail.com', 'aacount5', 'Minh Nguyệt', '2', '2020-12-12', '1');

INSERT INTO `testing_system_assignment_1`.`group` (`group_ID`, `group_Name`, `creator_ID`, `creatdate`) 
VALUES 	('1',	'Hát hò','1','2019-10-12'),
		('2', 'Ăn cơm', '2', '2019-10-12'),
		('3', 'Đập đá', '3', '2019-10-12'),
		('4', 'Ăn chơi', '4', '2019-10-12'),
		('5', 'Nhảy múa', '5', '2019-10-12');
INSERT INTO `testing_system_assignment_1`.`groupaccount` (`group_ID`, `account_ID`, `joindate`) 
VALUES 
('1', '16', '2020-1-1'),
('2', '17', '2020-1-1'),
('3', '18', '2020-1-1'),
('4', '19', '2020-1-1');
INSERT INTO `testing_system_assignment_1`.`typequestion` ( `type_NAME`) 
VALUES 
		('Loại câu 1'),
		('Loại câu 2'),
		('Loại câu 3'),
		('Loại câu 4'),
		('Loại câu 5');
INSERT INTO `testing_system_assignment_1`.`categoryquestion` ( `category_NAME`) 
VALUES 
		('Java'),
		('.Net'),
		('SQL'),
		('Postman'),
		('Ruby');
INSERT INTO `testing_system_assignment_1`.`question` ( `content`,`category_ID`,`type_ID`,`creator_ID`,`createdate`) 
VALUES 
		('Tại sao bạn muốn học Java','1','1','1','2012-02-01'),
		('Tại sao bạn muốn học .NET','2','2','1','2012-02-01'),
		('Học SQL có khó không ?','3','2','1','2012-02-01'),
		('Tại sao bạn muốn học Postman','4','1','1','2012-02-01'),
		('Tại sao bạn muốn học Ruby','5','1','1','2012-02-01');
INSERT INTO `testing_system_assignment_1`.`answer` ( `content`,`question_ID`,`isCorrect`) 
VALUES 
		('Vì em cảm thấy hứng thú với nó','1','Tạm chấp nhận'),
		('Vì em cảm thấy hứng thú với nó','2','Tạm chấp nhận'),
		('Đối với em thì sẽ ổn nếu chăm chỉ học','3','Cực kì ổn'),
		('Vì em cảm thấy hứng thú','4','Tạm chấp nhận'),
		('Vì em cảm thấy hứng thú','5','Tạm chấp nhận');
INSERT INTO `testing_system_assignment_1`.`exam` ( `code_name`,`title`,`category_ID`,`duration`,`creator_ID`,`createdate`) 
VALUES 
		('001','Đề thi số 1','1','50 phút','1','2021-02-02'),
		('002','Đề thi số 2','2','50 phút','2','2021-02-02'),
		('003','Đề thi số 3','3','50 phút','3','2021-02-02'),
		('004','Đề thi số 4','4','50 phút','4','2021-02-02'),
		('005','Đề thi số 5','5','50 phút','5','2021-02-02');

INSERT INTO `testing_system_assignment_1`.`examquestion` ( `exam_ID`,`question_ID`) 
VALUES 
		('2','1'),
		('2','3'),
		('1','1'),
		('1','3'),
		('3','4'),
		('3','3'),
		('3','4'),
		('4','5'),
		('4','3');
INSERT INTO `testing_system_assignment_1`.`account` (`email`, `username`, `fullname`, `position_ID`, `creatdate`, `department_ID`) 
VALUES 
('abcd123@gmail.com', 'aacount6', 'Trần Mai Linh', '2', '2015-12-12', '2'),
('abcde456@gmail.com', 'aacount7', 'Nguyễn Anh Tú', '2', '2016-12-12', '2'),
('abcdef789@gmail.com', 'aacount8', 'Dương Thị Hường', '2', '2017-12-12', '2'),
('abcdef111g@gmail.com', 'aacount9', 'Phạm Quỳnh Chi', '2', '2018-12-12', '2');
INSERT INTO `testing_system_assignment_1`.`account` (`email`, `username`, `fullname`, `position_ID`, `creatdate`, `department_ID`) 
VALUES 
('123@gmail.com', 'aacount10', 'Trần Mai Linh Nhi', '3', '2015-12-12', '3'),
('456@gmail.com', 'aacount11', 'Nguyễn Anh Tú Linh', '3', '2016-12-12', '3'),
('789@gmail.com', 'aacount12', 'Phạm Thị Hương', '3', '2017-12-12', '3'),
('111g@gmail.com', 'aacount13', 'Phạm Quỳnh ', '2', '2018-12-12', '3');
INSERT INTO `testing_system_assignment_1`.`group` (`group_ID`, `group_Name`, `creator_ID`, `creatdate`) 
VALUES 	('6',	'Chơi đồ','16','2019-10-12'),
		('7', 'VLTK', '17', '2019-10-12'),
		('8', 'Đập đá 2', '18', '2019-10-12'),
		('9', 'Ăn chơi 2', '19', '2019-10-12');
INSERT INTO `testing_system_assignment_1`.`answer` ( `content`,`question_ID`,`isCorrect`) 
VALUES 
		('Trả lời 2','1','Tạm chấp nhận'),
		('Trả lời 3','1','Tạm chấp nhận'),
		('Trả lời 4','1','Cực kì ổn'),
		('Em thích thì em làm thôi','2','Tạm chấp nhận'),
		('Vì em cảm thấy hứng thú','2','Tạm chấp nhận');
INSERT INTO `testing_system_assignment_1`.`exam` ( `code_name`,`title`,`category_ID`,`duration`,`creator_ID`,`createdate`) 
VALUES 
		('006','Đề thi số 6','6','60','1','2018-02-02'),
		('007','Đề thi số 7','7','65 phút','1','2018-02-03'),
		('008','Đề thi số 8','8','70 phút','2','2017-01-02'),
		('009','Đề thi số 9','9','50','2','2021-02-02'),
		('010','Đề thi số 10','10','50','2','2021-02-02');

                        