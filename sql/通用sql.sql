insert into a values(1);
insert into a(id) values(1);
select * from (select * from t where id = 1 or id = 2 ) where id = 1 or id = 2;
select * from a where 1 = 1;
select * from a where ID = 1;
select  id from a where id=(select 1 from a) ;
select  id from a where id=1;
select * from a where id < 10 union select * from b where id <10 ;
select * from a where id < 10 union all select * from b where id <10 ;
select t from t union select t from t1 union all select t from tt;
select t from t union all select t from tt;
create table mytab(id int not null , name char(10));
create table mytab(id int not null , name char(10),PRIMARY KEY (id) );
create table mytab(id int not null PRIMARY KEY, name char(10));
create table table1( id int );
create table table_one( id int );
/*纯数字*/create table "111"( id int );
/*特殊字符*/create table "table#"( id int );
/*数字开头*/create table "1tab"( id int );
/*下划线开头*/create table "_tab"( id int );
update a set id = 1;
DELETE FROM table_name;
update a set id = 1 where id = 1;
DELETE FROM table_name where id = 1;
create table temp( id int, name char(20), foreign key(id) references outTable(id)  );
create table temp( id int, name char(20), CONSTRAINT fff foreign key(id) references outTable(id)  );
create table temp( id int, name char(20));
create table mytab (id int, constraint PK_tab primary key (id)) ;
select id from a where id <> 1;
select id from a where id NOT IN (1);
select id from a where id NOT LIKE 1;
select a.id from a where not exists (select 1 from b where b.id= '1' );
select id from a where id = 1;
select count(id) from stu;
select count(1) from stu;
select count(*) from stu;
select * from a;
select id from a;
select t1.a, (select t2.* from t2) from t1;
create table mytab(id int not null , name timestamp);
create table mytab(id int not null);
select id from a where 1+age>2;
select id from a where 1>0;
select 1 from a where 2 > age -1;
select 1 from a where age = 2 and  2 > age -1;
select 1 from a where age = 2;
select id from a;
select id from (select id from a where id = 1)t;
select id from a where id =1;
select id from (select id from a where id = 1)t where t.id = 1;
select distinct id from a;
select id from a;
create table table1(id int);
truncate table a;
create table table1(table123 int);
select name from a where id like '%1'
select name from a where id like '1%'
select * from (select * from t where aa LIKE '%ww%' and bb like '%q') a where id like '%s%' and qw = 1;
drop table a;
alter table stu drop column id;
alter table test1 drop column id;
select coalesce(null,2,3) from stu;
select * from stu;
select * from a where age = (select aa from tt);
select * from a where age = (18,19);
select * from stu where substr(name,1,5)='candy';
select * from stu where LENGTH(name)=5;
select * from stu where name='candy';
select * from a,a;
select * from a,b;
select * from a as a  left join a as c on a.name = c.name;
select * from a as a  left join c as c on a.name = c.name;
create table temp( id int, name char(20), CONSTRAINT fff foreign key(id) references outTable(id)  );
create table temp( id int, name char(20), CONSTRAINT FK_PerOrders foreign key(id) references outTable(id)  );
select id from a where id in(1,2,3,4);
select id from a where id in(1,2,3);
create table mytab (id int, constraint ppp primary key (id)) ;
create table mytab (id int, constraint PK_tab primary key (id)) ;
CREATE TABLE Persons (Id_P INT NOT NULL,LastName VARCHAR (255) NOT NULL,FirstName VARCHAR (255),Address VARCHAR (255),City VARCHAR (255),CONSTRAINT pk_PersonID PRIMARY KEY (Id_P,LastName));
select * from t1 where a = a;
SELECT stuNo,results FROM score WHERE results>(SELECT AVG(results) FROM score);
SELECT stuNo,results,(SELECT AVG(results) FROM score) AS A FROM score;
SELECT stuNo,results FROM score WHERE results BETWEEN (SELECT AVG(results) FROM score WHERE results<=60) AND (SELECT AVG(results) FROM score WHERE results>=80);