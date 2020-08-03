drop table emp04;
create table emp04(
	sabun number primary key,
	name varchar2(30) not null,
	lvl	number(1) default 0
);
insert into emp04 values (1111,'user1','0');
insert into emp04 values (2222,'user2','1');
insert into emp04 values (3333,'user3','2');
insert into emp04 values (4444,'user4','3');
insert into emp04 values (5555,'user5','4');
commit;