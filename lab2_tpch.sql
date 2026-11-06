USE TPCH;

--1.插入地区
INSERT INTO Region(regionkey, name, comment)
VALUES(10, '西南地区', '中国西南片区');

--2.插入对应国家，regionkey=10是上面新增的
INSERT INTO Nation(nationkey, name, regionkey, comment)
VALUES(100, '云贵省', 10, '隶属于西南地区');

--3.测试：regionkey不存在，外键报错
INSERT INTO Nation(nationkey, name, regionkey, comment)
VALUES(101, '虚构地区国家', 999, 'regionkey=999在Region不存在');

--4.测试：主键重复，报错
INSERT INTO Region(regionkey, name, comment)
VALUES(10, '重复编号地区','测试主键冲突');
