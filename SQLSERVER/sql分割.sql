-- go语句
USE AdventureWorks2012;  
GO  
DECLARE @MyMsg VARCHAR(50)  
SELECT @MyMsg = 'Hello, World.'  
GO -- @MyMsg is not valid after this GO ends the batch.  
  
-- Yields an error because @MyMsg not declared in this batch.  
PRINT @MyMsg  
GO  
  
SELECT @@VERSION;  
-- Yields an error: Must be EXEC sp_who if not first statement in   
-- batch.  
sp_who  
GO 

/* 分号被引号包裹 */update cust1.audit_rule set examples = '{"sqlText":"select * from stu where age < (select min(age) from stu2);","suggest":"对实际需求 和SQL语句进行评估，评估是否可以简化SQL语句或使用连接操作代替子查询","indexes":[{"start":28,"end":57,"desc":"复杂的嵌套子查询会影响数据库优化器生成合理的执行计划，这是导致严重性能问题的常见原因","index":"①"}]}' where rule_name = 'SQL中存在嵌套子查询';
/* 分号被引号包裹 */update cust1.audit_rule set examples = "双引号中有分号;" where rule_name = 'SQL中存在嵌套子查询';
/* BEGIN…END */BEGIN SELECT product_id,product_name FROM production.products WHERE list_price> 100000; IF @@ROWCOUNT=0 PRINT 'No product with price greater than 100000 found'; END;
/* 嵌套BEGIN…END */BEGIN DECLARE @NAME VARCHAR (MAX); SELECT TOP 1 @NAME=product_name FROM production.products ORDER BY list_price DESC; IF @@ROWCOUNT<> 0 BEGIN PRINT 'The most expensive product is '+ @NAME END ELSE BEGIN PRINT 'No product found'; END; END;


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
SELECT Name FROM /* 注释中有分号; */Persons16;
-- 注释中有分号;
SELECT Name FROM Persons17;
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
/* 触发器 */CREATE TRIGGER production.trg_product_audit ON production.products AFTER
INSERT AS BEGIN
SET NOCOUNT ON;
INSERT INTO production.product_audits (product_id,product_name,brand_id,category_id,model_year,list_price,updated_at,operation)
SELECT i.product_id,product_name,brand_id,category_id,model_year,i.list_price,GETDATE(),'INS' FROM inserted i UNION ALL
SELECT d.product_id,product_name,brand_id,category_id,model_year,d.list_price,GETDATE(),'DEL' FROM deleted d; END;
/* 没有分号 */SELECT Name FROM Persons15