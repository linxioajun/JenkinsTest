--【审核规则】参与连接操作的表数量太多	
/*参与连接操作的表数量太多*/select 1 from a left join b on a.id = b.name left join c on a.id = c.age left join d on a.id=d.id;

/*未违反--参与连接操作的表数量太多*/select 1 from a left join b on a.id = b.name;

--【审核规则】全字段查询
/*全字段查询*/select * from a;

/*X全字段查询*/select id from a;
--【审核规则】连接操作未指定连接条件
/*连接操作未指定连接条件*/select id from a inner join b ;

/*X连接操作未指定连接条件*/select 1 from a inner join b on a.id = b.name ;

--【审核规则】不带条件的UPDATE/DELETE操作
/*不带条件的UPDATE/DELETE操作*/update a set id = 1 ;
/*不带条件的UPDATE/DELETE操作*/DELETE FROM table_name;


/*X-不带条件的UPDATE/DELETE操作*/update a set id = 1 where id = 1 ;
/*X-不带条件的UPDATE/DELETE操作*/DELETE FROM table_name where id = 1;

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
/*谓词中使用非定位条件*/select id from a where id <> 1;
/*谓词中使用非定位条件*/select id from a where id NOT IN (1);
/*谓词中使用非定位条件*/select id from a where id NOT LIKE 1;
/*谓词中使用非定位条件*/select a.id from a where not exists (select 1 from b where b.id= '1' );

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
/*修改列定义操作*/alter table student change column sname stuname varchar(20);

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
/*删除索引操作	*/DROP INDEX a ON table1;

--【审核规则】在SQL中使用悲观锁	
/*在SQL中使用悲观锁	*/select 1 from a for update;

/*X-在SQL中使用悲观锁	*/select 1 from a;



--【审核规则】有大字段类型的表字段	
/*有大字段类型的表字段*/create table a(a blob);

/*X-有大字段类型的表字段*/create table a(a int);

--【审核规则】使用HINTS的SQL语句	
/*使用HINTS的SQL语句*/select /*+sd*/ 1 from dual;


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

--【审核规则】建表没有显式使用INNODB引擎	
/*建表没有显式使用INNODB引擎*/create table mytab(id int not null , name Blob);

/*X-建表没有显式使用INNODB引擎*/create table mytab(id int not null , name Blob) engine=innodb;

--【审核规则】建表时，自增字段不止一个	
/*建表时，自增字段不止一个*/create table ss(id int  not null auto_increment, user_name varchar(15) not null auto_increment);

/*X-建表时，自增字段不止一个*/create table ss(id int  not null auto_increment, user_name varchar(15) not null );

--【审核规则】存在TRUNCATE TABLE操作	
/*存在TRUNCATE TABLE操作*/truncate table a;

--【审核规则】修改列名称操作	
/*修改列名称操作*/ALTER TABLE table1 CHANGE name1 name2 VARCHAR(12);

--【审核规则】UPDATE/DELETE操作存在使用limit子句	
/*UPDATE/DELETE操作存在使用limit子句*/delete from stu limit 1;
/*UPDATE/DELETE操作存在使用limit子句*/UPDATE stu set id=1 limit 1;
/*X-UPDATE/DELETE操作存在使用limit子句*/delete from stu ;

--【审核规则】UPDATE/DELETE操作存在使用ORDER BY子句	
/*UPDATE/DELETE操作存在使用ORDER BY子句*/delete from stu order by id;
/*UPDATE/DELETE操作存在使用ORDER BY子句*/UPDATE stu set id=1 order by id;
/*X-UPDATE/DELETE操作存在使用ORDER BY子句*/delete from stu ;


--【审核规则】OLTP系统建议全部使用一般索引	
/*OLTP系统建议全部使用一般索引*/create unique index aasd on table_test(a);

/*X-OLTP系统建议全部使用一般索引*/create index aasd on table_test(a);

--【审核规则】字段定义使用FLOAT,DOUBLE等类型	
/*字段定义使用FLOAT,DOUBLE等类型*/create table mytab(id int not null , name float);
/*字段定义使用FLOAT,DOUBLE等类型*/create table mytab(id int not null , name double);

/*X-字段定义使用FLOAT,DOUBLE等类型*/create table mytab(id int not null);

--【审核规则】不得使用外键与级联	
/*不得使用外键与级联*/create table temp( id int, name char(20), foreign key(id) references outTable(id)  );



--【审核规则】将NULL的变量值直接与比较运算符（符号）比较	
/*将NULL的变量值直接与比较运算符（符号）比较*/select * from stu where id = NULL;

/*X-将NULL的变量值直接与比较运算符（符号）比较*/select * from stu where id is NULL;

--【审核规则】查询语句的条件中字段使用了函数	
/*查询语句的条件中字段使用了函数*/select * from stu where MIN(age) < 12;

/*X-查询语句的条件中字段使用了函数*/select id from a;

--【审核规则】创建索引缺少索引名	
/*创建索引缺少索引名*/alter table table1 add index (a,b);

/*X-创建索引缺少索引名*/alter table table1 add index index1 (a,b);

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
/*触发器命名不符合规范*/CREATE TRIGGER TTT_nnn AFTER INSERT ON table1 FOR EACH ROW UPDATE table2 SET ID = 1;
/*X-触发器命名不符合规范*/CREATE TRIGGER TRI_nnn AFTER INSERT ON table1 FOR EACH ROW UPDATE table2 SET ID = 1;


--【审核规则】创建表缺少功能注释	
/*创建表缺少功能注释*/CREATE TABLE student( id INT PRIMARY KEY AUTO_INCREMENT);

/*X-创建表缺少功能注释*/CREATE TABLE student( id INT PRIMARY KEY AUTO_INCREMENT) COMMENT='学生信息';

--【审核规则】新增数据列缺少功能注释	
/*新增数据列缺少功能注释*/alter table stu add column name varchar(12) not null;
/*新增数据列缺少功能注释*/alter table t_book modify name varchar(22);
/*新增数据列缺少功能注释*/alter table student change column sname stuname varchar(20);
/*X-新增数据列缺少功能注释*/alter table stu add column name varchar(12) not null  comment '姓名' ;
/*新增数据列缺少功能注释*/alter table t_book modify name varchar(22) comment '姓名' ;
/*新增数据列缺少功能注释*/alter table student change column sname stuname varchar(20) comment '姓名' ;
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
/*慎重选用in或exists*/select a from tb where a in(1,2);

/*X-慎重选用in或exists*/select a from tb where a = 1;

--【审核规则】未使用绑定变量	
/*未使用绑定变量*/select * from stu where id=1;

/*X-未使用绑定变量*/select a from tb where a in(?);

--【审核规则】过度使用绑定变量
/*过度使用绑定变量*/select a from tb where a in(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
/*X-过度使用绑定变量*/select a from tb where a in(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

--【审核规则】列上禁止存在字符集	
/*列上禁止存在字符集*/alter table stu add column name varchar(12)  CHARACTER SET utf8 COLLATE utf8_general_ci not null  comment '姓名' ;

--【审核规则】char类型字段长度限制	
/*char类型字段长度限制*/alter table stu add column name char(55) not null;

/*X-char类型字段长度限制*/alter table stu add column name char(20) not null;

--【审核规则】使用标量子查询	
/*使用标量子查询*/select * from a where age = (select aa from tt);
/*X-使用标量子查询*/select * from a where age = (18,19);

--【审核规则】不要使用timestamp	
/*不要使用timestamp	*/create table mytab(id int not null , name timestamp);
/*X-不要使用timestamp	*/create table mytab(id int not null);

--【审核规则】禁止多表关联update操作	
/*禁止多表关联update操作*/update stu,class set age = 12;

--【审核规则】导出操作	
/*导出操作*/SELECT * FROM passwd INTO OUTFILE '/tmp/runoob.txt';



--【审核规则】同一张表被连接多次	
/*同一张表被连接多次*/select * from a,a;
/*X-同一张表被连接多次*/select * from a,b;

--【审核规则】查询条件使用开关条件
/*查询条件使用开关条件*/select 1 from table_name where 1>2;
/*X-查询条件使用开关条件*/select ID from table_name where ID>2;


