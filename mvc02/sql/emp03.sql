drop table emp03;
create table emp03(
	sabun number primary key,
	name varchar2(30) not null,
	sub varchar2(50),
	nalja date,
	pay number(4)
);
--dummy data
insert into emp03 values (1111,'tester1','subject1',sysdate,1000);
insert into emp03 values (2222,'tester2','subject2',sysdate,2000);
insert into emp03 values (3333,'tester3','subject3',sysdate,3000);
insert into emp03 values (4444,'tester4','subject4',sysdate,4000);
insert into emp03 values (5555,'tester5','subject5',sysdate,5000);
commit;

select * from emp03;