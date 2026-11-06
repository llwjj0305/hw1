CREATE DATABASE TPCH_Test CHARACTER SET utf8mb4;
USE TPCH_Test;

-- =========任务1演示：列级主键============
-- 列级定义主键
CREATE TABLE A(
    id INT PRIMARY KEY,
    name VARCHAR(20)
);

-- 等价表级定义主键
CREATE TABLE A2(
    id INT,
    name VARCHAR(20),
    CONSTRAINT pk_a2_id PRIMARY KEY(id)
);

-- 表级复合主键（无法写列级）
CREATE TABLE PartSupp(
    partkey INT,
    suppkey INT,
    availqty INT,
    PRIMARY KEY(partkey, suppkey)
);

-- =========任务2演示：实体完整性违约============
CREATE TABLE Supplier(
suppkey INTEGER PRIMARY KEY,
name CHAR(25),
address VARCHAR(40)
);

-- 成功插入
INSERT INTO Supplier(suppkey,name,address) VALUES(11,'test1','addr1');

-- 测试1：主键重复，报错
INSERT INTO Supplier(suppkey,name,address) VALUES(11,'test2','addr2');

-- 测试2：主键为NULL，报错
INSERT INTO Supplier(suppkey,name,address) VALUES(NULL,'test3','addr3');
