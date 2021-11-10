--【审核规则】参与连接操作的表数量太多	
select 1 from a left join b on a.id = b.name left join c on a.id = c.age left join d on a.id=d.id;

select 1 from a left join b on a.id = b.name;

--【审核规则】全字段查询
select * from a;

select id from a;
--【审核规则】连接操作未指定连接条件
select id from a inner join b ;

select 1 from a inner join b on a.id = b.name ;

--【审核规则】不带条件的UPDATE/DELETE操作
update a set id = 1 ;

update a set id = 1 where id = 1 ;

--【审核规则】无法使用索引的模糊查询条件
select name from a where id like '%1' ;

select name from a where id like '1%' ;

--【审核规则】SELECT语句包含多个OR谓词
select id from a where id =1 or id = 2 or id = 3 or id = 4 or id=5;

select id from a where id =1 or id = 2;

--【审核规则】查询语句缺少谓词	
select id from a;

select id from a where id =1;

--【审核规则】谓词中使用非定位条件	
select id from a where id <> 1;

select id from a where id = 1;

--【审核规则】IN谓词后面参数太多	
select id from a where id in(1,2,3,4);

select id from a where id in(1,2,3);

--【审核规则】SQL中存在嵌套子查询	
select  id from a where id=(select 1 from a) ;

select  id from a where id=1;

--【审核规则】SQL中存在用UNION操作	
select * from a where id < 10 union select * from b where id <10 ;

--【审核规则】SQL语句使用多层次嵌套	"
select * from stu where age < (select min(age) from stu2 where age < (select min(age) from stu3 where age < (select min(age) from stu4))) ;

select * from stu where age < (select min(age) from stu2 where age < (select min(age) from stu3 )) ;

--【审核规则】SQL语句访问的数据太多	
select ID from table1 where age > 18;

select ID from table1 where age < 18;



--【审核规则】INSERT语句未指定字段列表	
insert into a values(1);

insert into a(id) values(1);

--【审核规则】查询语句使用DISTINCT
select distinct 1 from a;

select 1 from a;

--【审核规则】查询语句的条件中使用表达式	
select 1 from a where 1+age>2;

select 1 from a where 1>2;

--【审核规则】表上未定义主键	
create table mytab(id int not null , name char(10));

create table mytab(id int not null , name char(10),PRIMARY KEY (id) );

--【审核规则】修改列定义操作	
alter table t_book modify name varchar(22);

--【审核规则】删除列操作	
alter table stu drop column id;

--【审核规则】删除表操作	
drop table a;

--【审核规则】创建数据库对象时未指定表空间	
create table table1(id int);

create table a(id int) tablespace test;

--【审核规则】创建数据库对象使用了关键字

create table table(id int);

create table table1(id int);

--【审核规则】建表时字段名使用了关键字	
create table table1(table int);

create table table1(table123 int);

--【审核规则】索引中使用的列过多	
create index i on a(id1,id2,id3, id4, id5, id6);

create index i on a(id,id,id);

--【审核规则】索引名称不符合规范（离线）	
create index i on a(id1,id2,id3, id4, id5, id6);

create index IDX_a on a(id,id,id);



--【审核规则】删除索引操作	
DROP INDEX a ON table1;
DROP INDEX a;

--【审核规则】在SQL中使用悲观锁	
select 1 from a for update;

select 1 from a;

--【审核规则】未指定ONLINE	
create index a on a(id);

create index a on a(id) online;

--【审核规则】建表索引时未明确指定索引表空间	
create index a on a(id);

create index a on a(id) tablespace s;

--【审核规则】序列缓存设置为0	
CREATE SEQUENCE seq_itv_collection INCREMENT BY 1 START WITH 1 NOMAXVALUE NOCYCLE CACHE 0;

CREATE SEQUENCE seq_itv_collection INCREMENT BY 1 START WITH 1 NOMAXVALUE NOCYCLE CACHE 10;

--【审核规则】序列增长值大于1	
create sequence a increment by 2;

create sequence a increment by 1;

--【审核规则】序列设置了cycle属性	
create sequence a nocycle;

create sequence a increment by 1;

--【审核规则】不规范的序列名称	
create sequence a nocycle;

create sequence SEQ_a increment by 1;

--【审核规则】有大字段类型的表字段	
create table a(a blob);

create table a(a int);

--【审核规则】使用HINTS的SQL语句	
select /*+sd*/ 1 from dual;

--【审核规则】使用VARCHAR类型而未使用VARCHAR2	
create table student (id int, name varchar(20), sex varchar(2), age int);

--【审核规则】使用过时的数据类型	
create table a(id long);

create table a(id int);

--【审核规则】不建议使用COUNT(col)或COUNT(常量)	
select count(id) from stu;

select count(*) from stu;

--【审核规则】建表有大字段类型的表字段	
create table mytab(id int not null , name Blob);

create table mytab(id int not null , age int);

--【审核规则】修改表有大字段类型的表字段	
alter table mytab add name Blob;

alter table mytab add name int;

--【审核规则】建表没有显式使用INNODB引擎	
create table mytab(id int not null , name Blob);

create table mytab(id int not null , name Blob) engine=innodb;

--【审核规则】建表时，自增字段不止一个	
create table ss(id int  not null auto_increment, user_name varchar(15) not null auto_increment);

create table ss(id int  not null auto_increment, user_name varchar(15) not null );

--【审核规则】存在TRUNCATE TABLE操作	
truncate table a;

--【审核规则】修改列名称操作	
ALTER TABLE table1 CHANGE name1 name2 VARCHAR(12);

--【审核规则】UPDATE/DELETE操作存在使用limit子句	
delete from stu limit 1;

delete from stu ;

--【审核规则】UPDATE/DELETE操作存在使用ORDER BY子句	
delete from stu order by id;

delete from stu ;


--【审核规则】OLTP系统建议全部使用一般索引	
create unique index aasd on table_test(a);

create index aasd on table_test(a);

--【审核规则】字段定义使用FLOAT,DOUBLE等类型	
create table mytab(id int not null , name float);
create table mytab(id int not null , name double);

create table mytab(id int not null);

--【审核规则】不得使用外键与级联	
create table temp( id int, name char(20), foreign key(id) references outTable(id)  );

--【审核规则】联机业务系统禁止使用DB LINK	
select * from table_name@dblink_name;

--【审核规则】将NULL的变量值直接与比较运算符（符号）比较	
select * from stu where id = NULL;

select * from stu where id is NULL;

--【审核规则】查询语句的条件中字段使用了函数	
select * from stu where f(age) < 12;

select 1 from a;

--【审核规则】创建索引缺少索引名	
alter table table1 add index (a,b);

alter table table1 add index index1 (a,b);

--【审核规则】表名称含有非规范字符	
create table table1( id int );

create table table_one( id int );

--【审核规则】外键不符合命名规范	
create table temp( id int, name char(20), CONSTRAINT fff foreign key(id) references outTable(id)  );

create table temp( id int, name char(20), CONSTRAINT FK_PerOrders foreign key(id) references outTable(id)  );

--【审核规则】主键命名不符合规范	
create table mytab (id int, constraint ppp primary key (id)) ;

create table mytab (id int, constraint PK_tab primary key (id)) ;

--【审核规则】触发器命名不符合规范
CREATE TRIGGER TTT_nnn AFTER INSERT ON table1 FOR EACH ROW UPDATE table2 SET ID = 1;
CREATE TRIGGER TTT_nnn AFTER INSERT ON table1 FOR EACH ROW BEGIN UPDATE table2 SET ID = 1; END;

CREATE TRIGGER TRI_nnn AFTER INSERT ON table1 FOR EACH ROW UPDATE table2 SET ID = 1;
CREATE TRIGGER TRI_nnn AFTER INSERT ON table1 FOR EACH ROW BEGIN UPDATE table2 SET ID = 1; END;

--【审核规则】创建表缺少功能注释	
CREATE TABLE student( id INT PRIMARY KEY AUTO_INCREMENT);

CREATE TABLE student( id INT PRIMARY KEY AUTO_INCREMENT) COMMENT='学生信息';

--【审核规则】新增数据列缺少功能注释	
alter table stu add column name varchar(12) not null;

alter table stu add column name varchar(12) not null  comment '姓名' ;

--【审核规则】慎重使用coalesce	
select coalesce(null,2,3) from stu;

--【审核规则】排序操作	
 select * from stu order by name;

 select * from stu ;


--【审核规则】SQL存在恒等条件
select * from a where 1 = 1;

select * from a where ID = 1;

--【审核规则】SQL指定RR隔离级别	
select * from stu with RR;

--【审核规则】SQL指定UR隔离级别	
select * from stu with UR;

--【审核规则】慎重选用in或exists	
select a.* from tb a where exists(select 1 from tb where name =a.name);
select a from tb where a in(1,2);
select a from tb where a = 1;

--【审核规则】未使用绑定变量	
select * from stu where id=1;

select a from tb where a in(?);

--【审核规则】过度使用绑定变量
select a from tb where a in(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
select a from tb where a in(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

--【审核规则】列上禁止存在字符集	
alter table stu add column name varchar(12)  CHARACTER SET utf8 COLLATE utf8_general_ci not null  comment '姓名' ;

--【审核规则】char类型字段长度限制	
alter table stu add column name char(55) not null;

alter table stu add column name char(20) not null;

--【审核规则】使用标量子查询	
select * from a where age = (select aa from tt);
select * from a where age = (18,19);

--【审核规则】不要使用timestamp	
create table mytab(id int not null , name timestamp);
create table mytab(id int not null);

--【审核规则】禁止多表关联update操作	
update stu,class set age = 12;

--【审核规则】导出操作	
SELECT * FROM passwd INTO OUTFILE '/tmp/runoob.txt'




