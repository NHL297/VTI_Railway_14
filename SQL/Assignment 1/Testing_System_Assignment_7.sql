DELiMITER $$
DROP TRIGGER IF EXISTS trigger_delete_department;

DELIMITER $$
	CREATE TRIGGER trigger_delete_department
	BEFORE DELETE ON Department
    FOR EACH ROW
    BEGIN
		DELETE FROM `ACCOUNT` WHERE DepartmentID IN (OLD.DepartmentID);
    END $$
DELIMITER ;

SELECT * FROM `Account` WHERE DepartmentID = 1;
SELECT * FROM `Department` WHERE DepartmentID = 1;

begin work;
	DELETE FROM `Department` WHERE DepartmentID = 1;
rollback;
DROP TRIGGER IF EXISTS trigger_insert_question;
DELIMITER $$
	CREATE TRIGGER trigger_insert_question
	BEFORE INSERT ON Question
    FOR EACH ROW
    BEGIN
		IF NEW.CreateDate > NOW() THEN
			SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'Insert loi ngay thang nam CreateDate';
		END IF;
    END $$
DELIMITER ;

begin work;
INSERT INTO `Testing_System_1`.`Question` (`Content`, `CategoryID`, `TypeID`, `CreatorID`, `CreateDate`)
 VALUES ('asdsad', '3', '2', '1', '2021-09-10');
rollback;
/*
Tao trigger khong cho nguoi dung nhap vao group co ngay tao truoc 1 nam truoc
*/
SELECT * FROM `group`;
DROP TRIGGER IF EXISTS trigger_insert_group;
DELIMITER $$
	CREATE TRIGGER trigger_insert_group
	before INSERT ON `group`
    FOR EACH ROW
    BEGIN
		##Khoi lenh trigger
        IF NEW.CreateDate < DATE_SUB(NOW(), INTERVAL 1 YEAR)
        THEN
			
			SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'insert fail do ngay tao khong hop le';
        END IF;
    END $$
DELIMITER ;


INSERT INTO `group`(`GroupName`,`CreateDate`) value ('GroupMoi','2021-08-01');
SELECT * FROM `group`;


/*Question 2: Tạo trigger Không cho phép người dùng thêm bất kỳ user nào vào
department "Sale" nữa, khi thêm thì hiện ra thông báo "Department
"Sale" cannot add more user"
*/
SELECT * FROM `account`;
DROP TRIGGER IF EXISTS trigger_insert_account;
DELIMITER $$
	CREATE TRIGGER trigger_insert_account
	before INSERT ON `account`
    FOR EACH ROW
    BEGIN
		##Khoi lenh trigger
        DECLARE idSale INT;
        SELECT DepartmentID INTO idSale FROM `Department` 
        WHERE DepartmentName LIKE '%Sale%';
        IF(NEW.DepartmentID = idSale)
        THEN
			SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'Department "Sale" cannot add more user';
        END IF;
    END $$
DELIMITER ;


SELECT DepartmentID  FROM `Department` WHERE DepartmentName LIKE '%Sale%';
INSERT INTO `account`(`DepartmentID`) VALUES (5); 
/*
Question 3: Cấu hình 1 group có nhiều nhất là 5 user
*/
DROP TRIGGER IF EXISTS trigger_max_group;
DELIMITER $$
	CREATE TRIGGER trigger_max_group
	before INSERT ON `groupaccount`
    FOR EACH ROW
    BEGIN
		##Khoi lenh trigger
        DECLARE countQ INT;
        SELECT count(`GroupID`) INTO countQ FROM `groupaccount` WHERE GroupID = NEW.GroupID;
        IF(countQ >= 5)
        THEN
			SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'Group chi co toi da 5 user';
        END IF;
    END $$
DELIMITER ;

begin work;
INSERT INTO `GroupAccount`(GroupID, AccountID)
VALUES ( 1, 4);
INSERT INTO `GroupAccount`(GroupID, AccountID)
VALUES ( 1, 6);
rollback;
/*Tạo trigger không cho phép người dùng xóa tài khoản có email là
admin@gmail.com (đây là tài khoản admin, không cho phép user xóa),
còn lại các tài khoản khác thì sẽ cho phép xóa và sẽ xóa tất cả các thông
tin liên quan tới user đó
*/
DROP TRIGGER IF EXISTS trigger_not_delete_account_admin;
DELIMITER $$
	CREATE TRIGGER trigger_not_delete_account_admin
	before delete ON `account`
    FOR EACH ROW
    BEGIN
		##Khoi lenh trigger
        IF(OLD.Email='admin@gmail.com')
        THEN
			SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'Account admin khong duoc xoa';
        END IF;
    END $$
DELIMITER ;

DELETE FROM `account` WHERE Email = 'admin@gmail.com';




