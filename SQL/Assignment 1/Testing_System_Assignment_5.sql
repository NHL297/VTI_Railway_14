USE testing_system_1;

DROP VIEW IF exists `v_account_full_info`;

CREATE VIEW `v_account_full_info` AS 
	SELECT A.*, DepartmentName AS D_Name, PositionName AS P_Name, COUNT(*) AS `SL_NV` FROM `account` A 
    JOIN Department USING(DepartmentID) 
    JOIN `position` USING (PositionID);
    
SELECT DepartmentName, DepartmentID FROM `v_account_full_info`;

SELECT MAX(`SL_NV`) FROM `v_account_full_info`;

CREATE OR REPLACE VIEW v_groupaccount_count AS
	SELECT AccountID, (AccountID) AS `SL_GROUP_THAM_GIA` 
    FROM `groupaccount` GROUP BY `AccountID`;
SELECT MAX(`SL_GROUP_THAM_GIA`) FROM v_groupaccount_count;
SELECT AccountID FROM v_groupaccount_count
WHERE `SL_GROUP_THAM_GIA`= (SELECT MAX(`SL_GROUP_THAM_GIA`) FROM v_groupaccount_count);

CREATE OR REPLACE VIEW v_ac_group AS
	SELECT * FROM `v_account_full_info`
    WHERE AccountID = (SELECT AccountID FROM v_groupaccount_count 
    WHERE `SL_GROUP_THAM_GIA`= (SELECT MAX(`SL_GROUP_THAM_GIA`) FROM v_groupaccount_count));
    
SELECT * FROM v_ac_group;

WITH CTE_Account AS 
(
	SELECT A.*, D.DepartmentName, P.PositionName
    FROM `Account` A
    JOIN `Department` D ON A.DepartmentID = D.DepartmentID
    JOIN `Position` P ON A.PositionID = P.PositionID
)
SELECT DepartmentName FROM CTE_Account; 



