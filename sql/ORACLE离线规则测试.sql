--【审核规则】参与连接操作的表数量太多	
/*参与连接操作的表数量太多*/select 1 from a left join b on a.id = b.name left join c on a.id = c.age left join d on a.id=d.id;

/*X参与连接操作的表数量太多*/select 1 from a left join b on a.id = b.name;

--【审核规则】全字段查询
/*全字段查询*/select * from a;

/*X全字段查询*/select id from a;
--【审核规则】连接操作未指定连接条件
/*连接操作未指定连接条件*/select id from a inner join b ;

/*X连接操作未指定连接条件*/select 1 from a inner join b on a.id = b.name ;



--【审核规则】无法使用索引的模糊查询条件
/*无法使用索引的模糊查询条件*/select name from a where id like '%1' ;

/*X无法使用索引的模糊查询条件*/select name from a where id like '1%' ;

--【审核规则】SELECT语句包含多个OR谓词
/*SELECT语句包含多个OR谓词*/select id from a where id =1 or id = 2 or id = 3 or id = 4 or id=5;

/*X-SELECT语句包含多个OR谓词*/select id from a where id =1 or id = 2;

--【审核规则】查询语句缺少谓词	
/*查询语句缺少谓词*/select id from a;

/*X查询语句缺少谓词*/select id from a where id =1;

--【审核规则】谓词中使用非定位条件	NOT IN，NOT LIKE，NOT EXISTS，<>
/*谓词中使用非定位条件<>*/select id from a where id <> 1;
/*谓词中使用非定位条件NOT IN*/select id from a where id NOT IN (1);
/*谓词中使用非定位条件NOT LIKE*/select id from a where id NOT LIKE 1;
/*谓词中使用非定位条件NOT EXISTS*/select a.id from a where not exists (select 1 from b where b.id= '1' );

/*X谓词中使用非定位条件*/select id from a where id = 1;

--【审核规则】IN谓词后面参数太多	
/*IN谓词后面参数太多*/select id from a where id in(1,2,3,4);

/*X-IN谓词后面参数太多*/select id from a where id in(1,2,3);

--【审核规则】SQL中存在嵌套子查询	
/*SQL中存在嵌套子查询*/select  id from a where id=(select 1 from a) ;

/*XSQL中存在嵌套子查询*/select  id from a where id=1;

--【审核规则】SQL中存在用UNION操作	
/*SQL中存在用UNION操作*/select * from a where id < 10 union select * from b where id <10 ;

--【审核规则】SQL语句使用多层次嵌套
/*SQL语句使用多层次嵌套*/select * from stu where age < (select min(age) from stu2 where age < (select min(age) from stu3 where age < (select min(age) from stu4))) ;

/*X SQL语句使用多层次嵌套*/select * from stu where age < (select min(age) from stu2 where age < (select min(age) from stu3 )) ;

--【审核规则】SQL语句访问的数据太多	
/*SQL语句访问的数据太多	*/select ID from table1 where age > 18;

/*X SQL语句访问的数据太多	*/select ID from table1 where age < 18;



--【审核规则】INSERT语句未指定字段列表	
/*INSERT语句未指定字段列表*/insert into a values(1);

/*X-INSERT语句未指定字段列表*/insert into a(id) values(1);

--【审核规则】查询语句使用DISTINCT
/*查询语句使用DISTINCT*/select distinct 1 from a;

/*X-查询语句使用DISTINCT*/select 1 from a;

--【审核规则】查询语句的条件中使用表达式
/*查询语句的条件中使用表达式*/select 1 from a where 1+age>2;

/*X-查询语句的条件中使用表达式*/select 1 from a where 1>2;

--【审核规则】表上未定义主键	
/*表上未定义主键*/create table mytab(id int not null , name char(10));

/*X-表上未定义主键*/create table mytab(id int not null , name char(10),PRIMARY KEY (id) );

--【审核规则】修改列定义操作
/*修改列定义操作*/alter table t_book modify name varchar(22);
/*修改列定义操作*/alter table T1 rename column ID to ID2;
--【审核规则】删除列操作
/*删除列操作*/alter table stu drop column id;

--【审核规则】删除表操作	
/*删除表操作*/drop table a;

--【审核规则】创建数据库对象时未指定表空间	
/*创建数据库对象时未指定表空间*/create table table1(id int);

/*X-创建数据库对象时未指定表空间*/create table a(id int) tablespace test;

--【审核规则】创建数据库对象使用了关键字

/*创建数据库对象使用了关键字*/create table table(id int);

/*X-创建数据库对象使用了关键字*/create table table1(id int);

--【审核规则】建表时字段名使用了关键字	
/*建表时字段名使用了关键字*/create table table1(table int);

/*X-建表时字段名使用了关键字*/create table table1(table123 int);

--【审核规则】索引中使用的列过多	
/*索引中使用的列过多*/create index i on a(id1,id2,id3, id4, id5, id6);

/*X-索引中使用的列过多*/create index i on a(id,id,id);

--【审核规则】索引名称不符合规范（离线）	
/*索引名称不符合规范（离线）*/create index i on a(id1,id2,id3, id4, id5, id6);

/*X-索引名称不符合规范（离线）*/create index IDX_a on a(id,id,id);



--【审核规则】删除索引操作	
/*删除索引操作	*/DROP INDEX a;


--【审核规则】在SQL中使用悲观锁	
/*在SQL中使用悲观锁	*/select 1 from a for update;

/*X-在SQL中使用悲观锁	*/select 1 from a;

--【审核规则】未指定ONLINE	
/*未指定ONLINE	*/create index a on a(id);

/*X-未指定ONLINE	*/create index a on a(id) online;

--【审核规则】建表索引时未明确指定索引表空间	
/*建表索引时未明确指定索引表空间*/create index a on a(id);

/*X-建表索引时未明确指定索引表空间*/create index a on a(id) tablespace s;

--【审核规则】序列缓存设置为0	
/*序列缓存设置为0*/CREATE SEQUENCE seq_itv_collection INCREMENT BY 1 START WITH 1 NOMAXVALUE NOCYCLE CACHE 0;

/*X-序列缓存设置为0*/CREATE SEQUENCE seq_itv_collection INCREMENT BY 1 START WITH 1 NOMAXVALUE NOCYCLE CACHE 10;

--【审核规则】序列增长值大于1	
/*序列增长值大于1*/create sequence a increment by 2;

/*X-序列增长值大于1*/create sequence a increment by 1;

--【审核规则】序列设置了cycle属性	
/*序列设置了cycle属性*/create sequence a nocycle;

/*X-序列设置了cycle属性*/create sequence a increment by 1;

--【审核规则】不规范的序列名称	
/*不规范的序列名称*/create sequence a nocycle;

/*X-不规范的序列名称*/create sequence SEQ_a increment by 1;

--【审核规则】有大字段类型的表字段	
/*有大字段类型的表字段*/create table a(a blob);

/*X-有大字段类型的表字段*/create table a(a int);

--【审核规则】使用HINTS的SQL语句	
/*使用HINTS的SQL语句*/select /*+sd*/ 1 from dual;

--【审核规则】使用VARCHAR类型而未使用VARCHAR2
/*使用VARCHAR类型而未使用VARCHAR2*/create table student (id int, name varchar(20), sex varchar(2), age int);
/*X-使用VARCHAR类型而未使用VARCHAR2*/create table student (id int, name varchar2(20), sex varchar2(2), age int);

--【审核规则】使用过时的数据类型	
/*使用过时的数据类型*/create table a(id long);
/*X-使用过时的数据类型*/create table a(id int);

--【审核规则】不建议使用COUNT(col)或COUNT(常量)	
/*不建议使用COUNT(col)或COUNT(常量)*/select count(id) from stu;

/*X-不建议使用COUNT(col)或COUNT(常量)*/select count(*) from stu;

--【审核规则】建表有大字段类型的表字段	
/*建表有大字段类型的表字段*/create table mytab(id int not null , name Blob);

/*X-建表有大字段类型的表字段*/create table mytab(id int not null , age int);

--【审核规则】修改表有大字段类型的表字段	
/*修改表有大字段类型的表字段*/alter table mytab add name Blob;

/*X-修改表有大字段类型的表字段*/alter table mytab add name int;


--【审核规则】存在TRUNCATE TABLE操作	
/*存在TRUNCATE TABLE操作*/truncate table a;







--【审核规则】OLTP系统建议全部使用一般索引	
/*OLTP系统建议全部使用一般索引*/create unique index aasd on table_test(a);

/*X-OLTP系统建议全部使用一般索引*/create index aasd on table_test(a);

--【审核规则】字段定义使用FLOAT,DOUBLE等类型	
/*字段定义使用FLOAT,DOUBLE等类型*/create table mytab(id int not null , name float);
/*字段定义使用FLOAT,DOUBLE等类型*/create table mytab(id int not null , name double);

/*X-字段定义使用FLOAT,DOUBLE等类型*/create table mytab(id int not null);

--【审核规则】不得使用外键与级联	
/*不得使用外键与级联*/create table temp( id int, name char(20), foreign key(id) references outTable(id)  );

--【审核规则】联机业务系统禁止使用DB LINK	
/*联机业务系统禁止使用DB LINK*/select * from table_name@dblink_name;

--【审核规则】将NULL的变量值直接与比较运算符（符号）比较	
/*将NULL的变量值直接与比较运算符（符号）比较*/select * from stu where id = NULL;

/*X-将NULL的变量值直接与比较运算符（符号）比较*/select * from stu where id is NULL;

--【审核规则】查询语句的条件中字段使用了函数	
/*查询语句的条件中字段使用了函数*/select * from stu where f(age) < 12;

/*X-查询语句的条件中字段使用了函数*/select 1 from a;


--【审核规则】表名称含有非规范字符	
/*表名称含有非规范字符*/create table table1( id int );

/*X-表名称含有非规范字符*/create table table_one( id int );

--【审核规则】外键不符合命名规范	
/*外键不符合命名规范*/create table temp( id int, name char(20), CONSTRAINT fff foreign key(id) references outTable(id)  );

/*X-外键不符合命名规范*/create table temp( id int, name char(20), CONSTRAINT FK_PerOrders foreign key(id) references outTable(id)  );

--【审核规则】主键命名不符合规范	
/*主键命名不符合规范*/create table mytab (id int, constraint ppp primary key (id)) ;

/*X-主键命名不符合规范*/create table mytab (id int, constraint PK_tab primary key (id)) ;

--【审核规则】触发器命名不符合规范
/*触发器命名不符合规范*/CREATE TRIGGER TTT_nnn AFTER INSERT ON table1 FOR EACH ROW BEGIN UPDATE table2 SET ID = 1; END;

/*X-触发器命名不符合规范*/CREATE TRIGGER TRI_nnn AFTER INSERT ON table1 FOR EACH ROW BEGIN UPDATE table2 SET ID = 1; END;



--【审核规则】慎重使用coalesce	
/*慎重使用coalesce*/select coalesce(null,2,3) from stu;

--【审核规则】排序操作	
/*排序操作*/select * from stu order by name;

/*X-排序操作*/select * from stu ;


--【审核规则】SQL存在恒等条件
/*SQL存在恒等条件*/select * from a where 1 = 1;

/*X-SQL存在恒等条件*/select * from a where ID = 1;



--【审核规则】慎重选用in或exists	
/*慎重选用in或exists*/select a.* from tb a where exists(select 1 from tb where name =a.name);
/*X-慎重选用in或exists*/select a from tb where a in(1,2);

/*慎重选用in或exists*/select a from tb where a = 1;

--【审核规则】未使用绑定变量	
/*未使用绑定变量*/select * from stu where id=1;

/*X-未使用绑定变量*/select a from tb where a in(?);

--【审核规则】过度使用绑定变量
/*过度使用绑定变量*/select a from tb where a in(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
/*X-过度使用绑定变量*/select a from tb where a in(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);



--【审核规则】使用标量子查询	
/*使用标量子查询*/select * from a where age = (select aa from tt);
/*X-使用标量子查询*/select * from a where age = (18,19);

--【审核规则】不要使用timestamp	
/*不要使用timestamp	*/create table mytab(id int not null , name timestamp);
/*X-不要使用timestamp	*/create table mytab(id int not null);

--【审核规则】同一张表被连接多次	
/*同一张表被连接多次*/select * from a,a;
/*X-同一张表被连接多次*/select * from a,b;

--【审核规则】查询条件使用开关条件
/*查询条件使用开关条件*/select 1 from table_name where 1>2;
/*X-查询条件使用开关条件*/select ID from table_name where ID>2;

--【审核规则】分区表命名不符合规范

/*分区表命名不符合规范*/CREATE TABLE CUSTOMER  
(  
    CUSTOMER_ID NUMBER NOT NULL PRIMARY KEY  
)  
PARTITION BY RANGE (CUSTOMER_ID)  
(  
    PARTITION CUS_PART1 VALUES LESS THAN (100000) TABLESPACE CUS_TS01,  
    PARTITION CUS_PART2 VALUES LESS THAN (200000) TABLESPACE CUS_TS02  
);

/*X-分区表命名不符合规范*/CREATE TABLE CUSTOMER  
(  
    CUSTOMER_ID NUMBER NOT NULL PRIMARY KEY  
)  
PARTITION BY RANGE (CUSTOMER_ID)  
(  
    PARTITION CUSTOMER_P202108 VALUES LESS THAN ('20210901')  
);
/*X-分区表命名不符合规范*/CREATE TABLE CUSTOMER  
(  
    CUSTOMER_ID NUMBER NOT NULL PRIMARY KEY  
)  
PARTITION BY RANGE (CUSTOMER_ID)  
(  
    PARTITION CUSTOMER_P210901 VALUES LESS THAN ('20210901')  
);




--【审核规则】不带条件的UPDATE/DELETE操作
/*不带条件的UPDATE/DELETE操作*/update a set id = 1 ;
/*不带条件的UPDATE/DELETE操作*/DELETE FROM table_name;


/*X-不带条件的UPDATE/DELETE操作*/update a set id = 1 where id = 1 ;
/*X-不带条件的UPDATE/DELETE操作*/DELETE FROM table_name where id = 1;



