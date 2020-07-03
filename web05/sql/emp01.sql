drop table emp01;
drop sequence emp01_seq;
--
create table emp01(
	sabun number primary key,
	name varchar2(30),
	nalja date,
	pay number
);
create sequence emp01_seq;
--
insert into emp01 values(
	emp01_seq.nextval,'강길동',sysdate,1000);
insert into emp01 values(
	emp01_seq.nextval,'김길동',sysdate,1000);
insert into emp01 values(
	emp01_seq.nextval,'이길동',sysdate,1000);
insert into emp01 values(
	emp01_seq.nextval,'박길동',sysdate,1000);
insert into emp01 values(
	emp01_seq.nextval,'홍길동',sysdate,1000);
commit;






