/*Để quản lý Thực tập của sinh viên, người ta xây dựng một cơ sở dữ liệu có tên là
ThucTap gồm các sơ đồ quan hệ sau (trường có dấu gạch chân là PrimaryKey):
 GiangVien(magv, hoten, luong)
 SinhVien(masv, hoten, namsinh, quequan)
 DeTai(madt, tendt, kinhphi, NoiThucTap)
 HuongDan(id, masv, madt, magv, ketqua)
Questions
1. Tạo table với các ràng buộc và kiểu dữ liệu
Thêm ít nhất 3 bản ghi vào table
2. Viết lệnh để
a) Lấy tất cả các sinh viên chưa có đề tài hướng dẫn
b) Lấy ra số sinh viên làm đề tài ‘CONG NGHE SINH HOC’
3. Tạo view có tên là "SinhVienInfo" lấy các thông tin về học sinh bao gồm:
mã số, họ tên và tên đề tài
(Nếu sinh viên chưa có đề tài thì column tên đề tài sẽ in ra "Chưa có")
4. Tạo trigger cho table SinhVien khi insert sinh viên có năm sinh <= 1900
thì hiện ra thông báo "năm sinh phải > 1900"
5. Hãy cấu hình table sao cho khi xóa 1 sinh viên nào đó thì sẽ tất cả thông
tin trong table HuongDan liên quan tới sinh viên đó sẽ bị xóa đi
*/
DROP DATABASE IF EXISTS `ThucTap`;
/* Lenh tao Database */
CREATE DATABASE IF NOT EXISTS `ThucTap`;
/* Lenh su dung Database */
USE `ThucTap`;
DROP TABLE IF EXISTS `GiangVien`;
/* Len tao bang va cac cot du lieu cua bang--*/
CREATE TABLE `GiangVien`
(
    `MaGV`   TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `HoTen` VARCHAR(50) NOT NULL,
    `Luong` INT UNSIGNED
);
INSERT INTO `GiangVien`(HoTen,Luong)
VALUES ('Nguyen Hoang Long','1200000'),
	   ('Hoang Trong Nho','5000000'),
	   ('Nguyen Van Chien','1400000');
SELECT * FROM `GiangVien`;

	
DROP TABLE IF EXISTS `SinhVien`;
/* Len tao bang va cac cot du lieu cua bang--*/
CREATE TABLE `SinhVien`
(
    `MaSV`   TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `HoTen` VARCHAR(50) NOT NULL,
    `NamSinh` INT UNSIGNED,
    `QueQuan` VARCHAR(50)
);
INSERT INTO `SinhVien`(HoTen,NamSinh,QueQuan)
VALUES ('Trinh Dinh Quang','1997','Ha Noi'),
       ('Bui Quang Minh','2001','Ha Noi'),
       ('Bui Quang Chien','2002','Dong Anh');
SELECT * FROM `SinhVien`;
DROP TABLE IF EXISTS `DeTai`;
/* Len tao bang va cac cot du lieu cua bang--*/
CREATE TABLE `DeTai`
(
    `MaDT`   VARCHAR(50) PRIMARY KEY,
    `TenDeTai` VARCHAR(50) NOT NULL,
    `KinhPhi` INT UNSIGNED,
    `NoiThucTap` VARCHAR(50) NOT NULL
);
INSERT INTO `DeTai`(MaDT,TenDeTai,KinhPhi,NoiThucTap)
VALUES ('DT01','CONG NGHE SINH HOC','500000','CTY A'),
       ('DT02','CONG NGHE THONG TIN','500000','CTY B'),
       ('DT03','DIEN TOAN DAM MAY','500000','CTY C');
       
       
DROP TABLE IF EXISTS `HuongDan`;
/* Len tao bang va cac cot du lieu cua bang--*/
CREATE TABLE `HuongDan`
(
    `id`   TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `MaSV` TINYINT UNSIGNED,
    `MaDT` VARCHAR(50),
    `MaGV` TINYINT UNSIGNED,
    `ketqua` VARCHAR(50),
    CONSTRAINT fk_masv FOREIGN KEY(MaSV) REFERENCES `SinhVien`(MaSV) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_magv FOREIGN KEY(MaGV) REFERENCES `GiangVien`(MaGV)ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_made FOREIGN KEY(MaDT) REFERENCES `DeTai`(MaDT) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO `HuongDan`(MaSV,MaDT,MaGV,ketqua)
VALUES (1,'DT01',2,'9'),
       (2,'DT01',2,'9'),
       (3,'DT02',3,'9');
SELECT *FROM `HuongDan`;
INSERT INTO `SinhVien`(HoTen,NamSinh,QueQuan)
VALUES ('Trinh Thu Thao','1997','Ha Noi'),
       ('Bui Quang Anh','1997','Ha Noi');
## Question 2 a,
SELECT A.HoTen FROM `SinhVien` A  left JOIN `huongdan` B ON A.MaSV = B.MaSV
WHERE B.MaDT is null;
##b,
SELECT MaDT, COUNT(MaSV) AS SL FROM `huongdan` GROUP BY (MaDT)
HAVING MaDT = 'DT01';
SELECT  C.TenDeTai,B.MaDt,count(B.MaSV) AS SLSV FROM `detai` C join `huongdan` B on C.MaDT = B.MaDT
GROUP BY (B.MaDT)
HAVING B.MaDT = 'DT01';

##Question 3
DROP VIEW IF exists `SinhVienInfo`;
CREATE VIEW `SinhVienInfo` AS 
	SELECT A.MaSV,A.HoTen,
CASE
	WHEN C.TenDeTai is null then 'Chua co'
    ELSE C.TenDeTai
end as TenDeTai
FROM `SinhVien` A left JOIN `huongdan` B ON A.MaSV = B.MaSV 
LEFT JOIN `detai` C ON B.MaDT = C.MaDT;

select * FROM `SinhVienInfo`;

DELiMITER $$
DROP TRIGGER IF EXISTS trigger_insert_sinhvien;

DELIMITER $$
	CREATE TRIGGER trigger_insert_sinhvien
	BEFORE INSERT ON `sinhvien`
    FOR EACH ROW
    BEGIN
		IF NEW.NamSinh <=1900
        THEN
			SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'Nam sinh phai lon hon 1900';
        END IF;
    END $$
DELIMITER ;






