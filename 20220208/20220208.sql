/* 分号被引号包裹 */update cust1.audit_rule set examples = '{"sqlText":"select * from stu where age < (select min(age) from stu2);","suggest":"对实际需求 和SQL语句进行评估，评估是否可以简化SQL语句或使用连接操作代替子查询","indexes":[{"start":28,"end":57,"desc":"复杂的嵌套子查询会影响数据库优化器生成合理的执行计划，这是导致严重性能问题的常见原因","index":"①"}]}' where rule_name = 'SQL中存在嵌套子查询';
/* ORACLE-BEGIN…END */begin dbms_aqadm_sys.remove_all_nondurablesub(:1, :2); end;
/* ORACLE-BEGIN…END */begin dbms_feature_usage_internal.exec_db_usage_sampling(:bind1); end;
/* ORACLE-BEGIN…END */begin prvt_hdm.auto_execute( :dbid, :inst_num , :end_snap_id ); end;
/* ORACLE-BEGIN…END */BEGIN DBMS_FEATURE_AUTOSTA(:feature_boolean, :aux_cnt, :feature_info); END;
/* ORACLE */CREATE TRIGGER TRI_nnn AFTER INSERT ON table1 FOR EACH ROW BEGIN UPDATE table2 SET ID = 1; END;

/* SQL server-BEGIN…END */BEGIN SELECT product_id,product_name FROM production.products WHERE list_price> 100000; IF @@ROWCOUNT=0 PRINT 'No product with price greater than 100000 found'; END;
/* SQL server */CREATE TRIGGER production.trg_product_audit ON production.products AFTER
INSERT AS BEGIN
SET NOCOUNT ON;
INSERT INTO production.product_audits (product_id,product_name,brand_id,category_id,model_year,list_price,updated_at,operation)
SELECT i.product_id,product_name,brand_id,category_id,model_year,i.list_price,GETDATE(),'INS' FROM inserted i UNION ALL
SELECT d.product_id,product_name,brand_id,category_id,model_year,d.list_price,GETDATE(),'DEL' FROM deleted d; END;


/* 分号被引号包裹 */update cust1.audit_rule set examples = '{""sqlText"":""select * from stu where age < (select min(age) from stu2);"",""suggest"":""对实际需求 和SQL语句进行评估，评估是否可以简化SQL语句或使用连接操作代替子查询"",""indexes"":[{""start"":28,""end"":57,""desc"":""复杂的嵌套子查询会影响数据库优化器生成合理的执行计划，这是导致严重性能问题的常见原因"",""index"":""①""}]}' where rule_name = 'SQL中存在嵌套子查询';
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
/* 没有分号 */SELECT Name FROM Persons15;

/*NDTM参数化失败*/ select * from stu where age < (select min(age) from stu2 where age < select min(age) from stu3);
/*NDTM参数化失败后面的SQL*/SELECT Name FROM Persons;
/*NDTM参数化失败后面的SQL*/INSERT INTO Persons VALUES ('Bill');
