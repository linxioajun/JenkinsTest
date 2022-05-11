update cust1.audit_rule set examples = '{"sqlText":"select * from stu where age < (select min(age) from stu2);","suggest":"对实际需求 和SQL语句进行评估，评估是否可以简化SQL语句或使用连接操作代替子查询","indexes":[{"start":28,"end":57,"desc":"复杂的嵌套子查询会影响数据库优化器生成合理的执行计划，这是导致严重性能问题的常见原因","index":"①"}]}' where rule_name = 'SQL中存在嵌套子查询';
/* 分号被引号包裹 */update cust1.audit_rule set examples = "双引号中有分号;" where rule_name = 'SQL中存在嵌套子查询';
SELECT Name FROM Persons1;
SELECT Name FROM Persons2 
; 
 SELECT Name FROM Persons3 ; SELECT Name FROM Persons4 ; SELECT Name FROM Persons5 ; 
/* 注释在前端 */SELECT Name FROM Persons6; 
SELECT Name FROM Persons7/* 注释在末端 */; 
SELECT Name FROM Persons8;
SELECT Name /* 注释在中间 */FROM Persons9; 
SELECT Name FROM Persons10; 
SELECT Name FROM Persons11 ;
SELECT
    Name 
FROM
    Persons12; 
-- 注释为--
SELECT Name FROM Persons13;
SELECT Name FROM Persons14; -- 注释在末端
/* 多行注释带分号
 多行注释带分号;
 多行注释带分号;
 多行注释带分号*/
SELECT Name FROM Persons20;
SELECT Name FROM/* 多行注释带分号
                 多行注释带分号;
                 多行注释带分号;
                 多行注释带分号*/ Persons21;
SELECT Name FROM Persons22/* 多行注释带分号
                                           多行注释带分号;
                                           多行注释带分号;
                                           多行注释带分号*/;
/* 没有分号 */SELECT Name FROM Persons15