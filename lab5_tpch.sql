USE TPCH;

--任务 1：创建一个视图，只显示所有 “亚洲”(ASIA) 地区的顾客信息
CREATE VIEW V_Asia_Customer AS
SELECT C.*
FROM Customer C
JOIN Nation N ON C.nationkey = N.nationkey
JOIN Region R ON N.regionkey = R.regionkey
WHERE R.name = 'ASIA';

--任务 2：查询你创建的 V_Part_Supplier 视图，找出所有供应价比零售价更高的记录
-- 查询视图：供应价 > 零售价
SELECT *
FROM V_Part_Supplier
WHERE supplycost > retailprice;

--任务 3：删除本实验中创建的所有视图
DROP VIEW IF EXISTS V_Part_Supplier;
DROP VIEW IF EXISTS V_Customer_Stats;
DROP VIEW IF EXISTS V_Huawei_Supplies;
DROP VIEW IF EXISTS V_Asia_Customer;

