USE TPCH;

CREATE VIEW V_Asia_Customer AS
SELECT C.*
FROM Customer C
JOIN Nation N ON C.nationkey = N.nationkey
JOIN Region R ON N.regionkey = R.regionkey
WHERE R.name = 'ASIA';
