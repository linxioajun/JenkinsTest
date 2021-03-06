/*笛卡尔积*/select 1 from a,b,c,d;
/*等值连接*/select 1 from a,b,c,d where a.id = b.id and a.id = c.id and a.id = d.id;
/*inner join*/select 1 from table1 a inner join table2 b on a.id = b.id inner join table3 c on a.age = c.age inner join table4 d on a.age = d.age;
/*left join*/select 1 from table1 a left join table2 b on a.id = b.id left join table3 c on a.age = c.age left join table4 d on a.age = d.age;
/*left join*/select 1 from table1 a left outer join table2 b on a.id = b.id left join table3 c on a.age = c.age left join table4 d on a.age = d.age;
/*rigth join*/select 1 from table1 a right join table2 b on a.id = b.id right join table3 c on a.age = c.age right join table4 d on a.age = d.age;
/*rigth join*/select 1 from table1 a right outer join table2 b on a.id = b.id right join table3 c on a.age = c.age right join table4 d on a.age = d.age;
/*cross join*/select 1 from table1 a cross join table2 b cross join table3 c cross join table4 d;
/*join*/select 1 from table1 a join table2 b on a.id = b.id inner join table3 c on a.age = c.age inner join table4 d on a.age = d.age;
/*db2 on ()=()语法*/select 1 from table1 a join table2 b on (a.id,a.name)=(b.id,b.name) join table3 c on (a.id,a.name)=(c.id,c.name)  join table4 d on (a.id,a.name)=(d.id,d.name);
/*笛卡尔积*/select 1 from a,b,c;
/*等值连接*/select 1 from a,b,c where a.id = b.id and a.id = c.id;
/*inner join*/select 1 from table1 a inner join table2 b on a.id = b.id inner join table3 c on a.age = c.age;
/*inner join*/select 1 from table1  a inner join table2  b on a.id = b.id inner join table3  c on a.age = c.age;
/*left join*/select 1 from table1 a left join table2 b on a.id = b.id left join table3 c on a.age = c.age;
/*left join*/select 1 from table1 a left outer join table2 b on a.id = b.id left join table3 c on a.age = c.age;
/*rigth join*/select 1 from table1 a right join table2 b on a.id = b.id right join table3 c on a.age = c.age;
/*rigth join*/select 1 from table1 a right outer join table2 b on a.id = b.id right join table3 c on a.age = c.age;
/*cross join*/select 1 from table1 a cross join table2 b cross join table3 c;
/*join*/select 1 from table1 a join table2 b on a.id = b.id inner join table3 c on a.age = c.age;
/*db2 on ()=()语法*/select 1 from table1 a join table2 b on (a.id,a.name)=(b.id,b.name) join table3 c on (a.id,a.name)=(c.id,c.name);
/*等值连接*/select 1 from table1,table2;
/*等值连接*/select 1 from table1 a,table2 b where a.id = b.id and a.name = b.name and a.id=1;
/*等值连接*/select 1 from table1 a,table2 b where a.id = b.id and a.name = b.name;
/*等值连接*/select 1 from table1 a,table2 b where a.id = b.id and a.name = b.name and a.id=1;
/*inner join*/select 1 from table1 a inner join table2 b on a.id = b.id and a.name = b.name where a.id=1;
/*inner join*/select 1 from table1 a inner join table2 b on a.id = b.id and a.name = b.name and a.id=1;
/*inner join*/select 1 from table1 a inner join table2 b on a.id = b.id and a.name = b.name where a.id=1;
/*inner join*/select 1 from table1 a inner join table2 b on (a.id = b.id and a.name = b.name) where a.id=1;
/*inner join*/select 1 from table1 as a inner join table2 as b on a.id = b.id and a.name = b.name where a.id=1;
/*join 等同于 inner join*/select 1 from table1 a join table2 b on a.id = b.id and a.name = b.name where a.id=1;
/*left join*/select 1 from table1 a left join table2 b on a.id = b.id and a.name = b.name where a.id=1;
/*left join*/select 1 from table1 a left outer join table2 b on a.id = b.id and a.name = b.name where a.id=1;
/*rigth join*/select 1 from table1 a right outer join table2 b on a.id = b.id and a.name = b.name where a.id=1;
/*rigth join*/select 1 from table1 a right join table2 b on a.id = b.id and a.name = b.name where a.id=1;
/*cross join*/select 1 from table1 a cross join table2 b where a.id=1;
/*db2 on ()=()语法*/select 1 from table1 a join table2 b on (a.id,a.name)=(b.id,b.name);
select * from a;
select t1.a, (select t2.* from t2) from t1;
select id from a;
/*没有指定行*/update a set id = 1;
/*删除所有行*/DELETE FROM table_name;
update a set id = 1 where id = 1;
DELETE FROM table_name where id = 1;
delete from (select * from t1 where name = 1);
select name from a where id like '%1';
select * from (select * from t where aa LIKE '%ww%' and bb like '%q') a where id like '%s%' and qw = 1;
select name from a where id like '1%';
select id from a where id =1 or id = 2 or id = 3 or id=4 or id=5;
select id from a where id =1 or id = 2 or id = 3 or id=4;
select * from (select * from t where id = 1 or id = 2 or id = 3) where id = 1 or id = 2 or id = 3;
select * from (select * from t where id = 1 or id = 2 ) where id = 1 or id = 2;
select id from a;
/*嵌套查询*/select id from (select id from a where id = 1)t;
select id from a where id =1;
/*嵌套查询*/select id from (select id from a where id = 1)t where t.id = 1;
select id from a where id <> 1;
select id from a where id NOT IN (1);
select id from a where id NOT LIKE 1;
select a.id from a where not exists (select 1 from b where b.id= '1' );
select id from a where id = 1;
select id from a where id in(1,2,3,4);
select id from a where id in(1,2,3);
select  id from a where id=(select 1 from a) ;
select  id from a where id=1;
select * from a where id < 10 union select * from b where id <10 ;
select t from t union select t from t1 union all select t from tt;
select * from a where id < 10 union all select * from b where id <10 ;
select t from t union all select t from tt;
select * from stu where age < (select min(age) from stu2 where age < (select min(age) from stu3 where age < (select min(age) from stu4 where age < (select min(age) from stu5 ))));
select * from stu where age < (select min(age) from stu2 where age < (select min(age) from stu3 where age < (select min(age) from stu4 )));
insert into a values(1);
insert into a(id) values(1);
select distinct id from a;
select id from a;
select id from a where 1+age>2;
select 1 from a where 2 > age -1;
select 1 from a where age = 2 and  2 > age -1;
select id from a where 1>0;
select 1 from a where age = 2;
create table mytab(id int not null , name char(10));
create table mytab(id int not null , name char(10),PRIMARY KEY (id) );
create table mytab(id int not null PRIMARY KEY, name char(10));
CREATE TABLE Persons (Id_P INT NOT NULL,LastName VARCHAR (255) NOT NULL,FirstName VARCHAR (255),Address VARCHAR (255),City VARCHAR (255),CONSTRAINT pk_PersonID PRIMARY KEY (Id_P,LastName));
/*修改列属性*/alter table T3 alter column ID set data type clob;
alter table stu drop column id;
alter table test1 drop column id;
drop table a;
create table table1(id int);
create table a(id int) in tablespace_name;
create table "table"(id int);
create table "delete"(id int);
create table "update"(id int);
create table "select"(id int);
create table "where"(id int);
create table "in"(id int);
create table "like"(id int);
create table "order"(id int);
create table "having"(id int);
create table "set"(id int);
create table "distinct"(id int);
create table "between"(id int);
create table "insert"(id int);
create table "into"(id int);
create table "and"(id int);
create table "all"(id int);
create table "group"(id int);
create table table1(id int);
/*建表*/create table table_name("where" int);
/*添加字段*/alter table members add "where" int;
/*建表*/create table table_name("ID" int);
/*添加字段*/alter table members add "ID" int;
create table table1("table" int);
create table table_name("delete" int);
create table table_name("update" int);
create table table_name("select" int);
create table table_name("where" int);
create table table_name("in" int);
create table table_name("like" int);
create table table_name("order" int);
create table table_name("having" int);
create table table_name("set" int);
create table table_name("distinct" int);
create table table_name("between" int);
create table table_name("insert" int);
create table table_name("into" int);
create table table_name("and" int);
create table table_name("all" int);
create table table_name("group" int);
create table table_name( avg  int);
create table table1(table123 int);
create index i on a(id1,id2,id3, id4, id5, id6);
create index i on a(id1,id2,id3,id4,id5);
create index i on a(id1,id2,id3, id4, id5, id6);
create index IDX_a on a(id,id,id);
DROP INDEX index_name;
select id from a for update;
select id from a;
truncate table a;
create table temp( id int, name char(20), foreign key(id) references outTable(id)  );
create table temp( id int, name char(20), CONSTRAINT fff foreign key(id) references outTable(id)  );
create table temp( id int, name char(20));
create table mytab (id int, constraint PK_tab primary key (id)) ;
select * from stu where substr(name,1,5)='candy';
select * from stu where LENGTH(name)=5;
select * from stu where SUBSTRING(name,1)='candy';
select * from stu where SUBSTRING(name,1,5)='candy';
select * from stu where TO_CHAR(datetime, 'YYYY-MM-DD')='2010-01-01';
select id from a;
select * from stu where name='candy';
/*纯数字*/create table "111"( id int );
/*特殊字符*/create table "table#"( id int );
/*特殊字符*/create table table#( id int );
/*数字开头*/create table "1tab"( id int );
/*下划线开头*/create table "_tab"( id int );
/*带数字*/create table table1( id int );
/*带下划线*/create table table_one( id int );
create table temp( id int, name char(20), CONSTRAINT fff foreign key(id) references outTable(id)  );
create table temp( id int, name char(20), CONSTRAINT FK_PerOrders foreign key(id) references outTable(id)  );
create table mytab (id int, constraint ppp primary key (id)) ;
create table mytab (id int, constraint PK_tab primary key (id)) ;
CREATE TRIGGER TTT_nnn AFTER INSERT ON table1 FOR EACH ROW UPDATE table2 SET ID = 1;
CREATE TRIGGER TRI_nnn AFTER INSERT ON table1 FOR EACH ROW UPDATE table2 SET ID = 1;
select coalesce(null,2,3) from stu;
select * from stu;
select * from a where 1 = 1;
select * from t1 where a = a;
select * from a where ID = 1;
select * from stu with RR;
select * from stu with UR;
select * from stu where id=1;
select id as identity from stu where a=? and b=1;
select 'a' as name from abc;
select * from abc where a in ('1','2','3');
select * from d_menu where name like '%'||'asd'||'%';
select * from abc where a='1';
select 'a' as name from b;
insert into a(a,b,c) values (1,?,3);
update abc set name='123';
select * from dual order by 1;
select * from dual group by 1;
SELECT productline,order_year,order_value,LAG (order_value,1) OVER (PARTITION BY productLine ORDER BY order_year) prev_year_order_value FROM productline_sales;
SELECT * FROM  (  SELECT A.*, ROWNUM RN  FROM (SELECT * FROM TABLE_NAME) A  WHERE ROWNUM <= 412 )  WHERE RN >= 23;
select * from abc fetch first 10 rows only;
select upper('asd') from dual;
SELECT CAST('123' AS int) as result from dual;
select a from tb where a in(?);
select id as identity from stu where a=? and b=?;
select ? as name from abc;
select * from abc where a in (?,?,?);
select * from d_menu where name like '%'||?||'%';
select * from abc where a=?;
select ? as name from b;
insert into a(a,b,c) values (?,?,?);
update abc set name=?;
select * from dual order by ?;
select * from dual group by ?;
SELECT productline,order_year,order_value,LAG (order_value,?) OVER (PARTITION BY productLine ORDER BY order_year) prev_year_order_value FROM productline_sales;
select upper(name) from dual;
SELECT CAST(? AS int) as result from dual;
SELECT * FROM  (  SELECT A.*, ROWNUM RN  FROM (SELECT * FROM TABLE_NAME) A  WHERE ROWNUM <= ? )  WHERE RN >= ?;
select * from abc fetch first rows only;
select a from tb where a in(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
select a from tb where a in(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
SELECT stuNo,results FROM score WHERE results>(SELECT AVG(results) FROM score);
SELECT stuNo,results,(SELECT AVG(results) FROM score) AS A FROM score;
SELECT stuNo,results FROM score WHERE results BETWEEN (SELECT AVG(results) FROM score WHERE results<=60) AND (SELECT AVG(results) FROM score WHERE results>=80);
select * from a where age = (select aa from tt);
select * from a where age = (18,19);
select count(id) from stu;
select count(1) from stu;
select count(*) from stu;
select * from a,a,a;
select * from a a  left join a b on a.name = b.name left join a c on a.name = c.name;
select * from a,a;
select * from a a  left join a c on a.name = c.name;
select * from stu with RS;
select * from stu with;
delete from t1 where t1.tnum = (select z2.znum from ztable z1,ztable z2 where t1.zid=z1.id and z1.zid=z2.bsm);
update table1 t1 set t1.tnum = (select z2.znum from ztable z1,ztable z2 where t1.zid=z1.id and z1.zid=z2.bsm);
CREATE INDEX PersonIndex ON Person (LastName) ALLOW REVERSE SCANS;
CREATE INDEX PersonIndex ON Person (LastName);
/*建表*/create table table_name(name blob);
/*添加字段*/alter table members add name blob;
/*修改列属性*/alter table T3 alter column ID set data type blob;
/*建表*/create table table_name(name clob);
/*添加字段*/alter table members add name clob;
/*修改列属性*/alter table T3 alter column ID set data type clob;
/*建表*/create table table_name(name int);
/*添加字段*/alter table members add name int;
/*修改列属性*/alter table T3 alter column ID set data type int;
select * from stu order by name;
INSERT INTO table1 select * FROM table2;