USE TPCH;

-- root用户执行，重新给mike分配客户职员角色
GRANT 'customer_employee' TO 'mike'@'localhost';

-- 设置默认角色，mike登录自动启用该角色
SET DEFAULT ROLE 'customer_employee' TO 'mike'@'localhost';

FLUSH PRIVILEGES;
