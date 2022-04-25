/* 分号被引号包裹 */update cust1.audit_rule set examples = '{""sqlText"":""select * from stu where age < (select min(age) from stu2);"",""suggest"":""对实际需求 和SQL语句进行评估，评估是否可以简化SQL语句或使用连接操作代替子查询"",""indexes"":[{""start"":28,""end"":57,""desc"":""复杂的嵌套子查询会影响数据库优化器生成合理的执行计划，这是导致严重性能问题的常见原因"",""index"":""①""}]}' where rule_name = 'SQL中存在嵌套子查询';
/* BEGIN…END */begin      dbms_aqadm_sys.remove_all_nondurablesub(:1, :2);   end;
/* BEGIN…END */begin dbms_feature_usage_internal.exec_db_usage_sampling(:bind1); end;
/* BEGIN…END */begin prvt_hdm.auto_execute( :dbid, :inst_num , :end_snap_id ); end;
/* BEGIN…END */BEGIN DBMS_FEATURE_AUTOSTA(:feature_boolean, :aux_cnt, :feature_info);  END;
/* 嵌套BEGIN…END */DECLARE job BINARY_INTEGER := :job;  next_date TIMESTAMP WITH TIME ZONE := :mydate;  broken BOOLEAN := FALSE;  job_name VARCHAR2(30) := :job_name;  job_subname VARCHAR2(30) := :job_subname;  job_owner VARCHAR2(30) := :job_owner;  job_start TIMESTAMP WITH TIME ZONE := :job_start;  job_scheduled_start TIMESTAMP WITH TIME ZONE := :job_scheduled_start;  window_start TIMESTAMP WITH TIME ZONE := :window_start;  window_end TIMESTAMP WITH TIME ZONE := :window_end;  chain_id VARCHAR2(14) :=  :chainid;  credential_owner varchar2(30) := :credown;  credential_name  varchar2(30) := :crednam;  destination_owner varchar2(30) := :destown;  destination_name varchar2(30) := :destnam;  job_dest_id varchar2(14) := :jdestid;  log_id number := :log_id;  BEGIN  begin if prvt_advisor.is_pack_enabled('DIAGNOSTIC') then dbsnmp.bsln_internal.maintain_statistics; end if; end;  :mydate := next_date; IF broken THEN :b := 1; ELSE :b := 0; END IF; END; 
/* 嵌套BEGIN…END */DECLARE job BINARY_INTEGER := : job; next_date TIMESTAMP WITH TIME ZONE := : mydate; broken BOOLEAN :=FALSE; job_name VARCHAR2 (30) := : job_name; job_subname VARCHAR2 (30) := : job_subname; job_owner VARCHAR2 (30) := : job_owner; job_start TIMESTAMP WITH TIME ZONE := : job_start; job_scheduled_start TIMESTAMP WITH TIME ZONE := : job_scheduled_start; window_start TIMESTAMP WITH TIME ZONE := : window_start; window_end TIMESTAMP WITH TIME ZONE := : window_end; chain_id VARCHAR2 (14) :=  : chainid; credential_owner varchar2 (30) := : credown; credential_name varchar2 (30) := : crednam; destination_owner varchar2 (30) := : destown; destination_name varchar2 (30) := : destnam; job_dest_id varchar2 (14) := : jdestid; log_id NUMBER := : log_id; BEGIN DECLARE ename VARCHAR2 (30); BEGIN ename :=dbms_sqltune.execute_tuning_task ('SYS_AUTO_SQL_TUNING_TASK'); END;  : mydate :=next_date; IF broken THEN : b :=1; ELSE : b :=0; END IF; END;
/* 触发器 */CREATE TRIGGER TTT_nnn AFTER INSERT ON table1 FOR EACH ROW BEGIN UPDATE table2 SET ID = 1; END;
/* 触发器 */CREATE TRIGGER TRI_nnn AFTER INSERT ON table1 FOR EACH ROW BEGIN UPDATE table2 SET ID = 1; END;
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
/* 没有分号 */SELECT Name FROM Persons15