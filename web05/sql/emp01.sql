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
	emp01_seq.nextval,'���浿',sysdate,1000);
insert into emp01 values(
	emp01_seq.nextval,'��浿',sysdate,1000);
insert into emp01 values(
	emp01_seq.nextval,'�̱浿',sysdate,1000);
insert into emp01 values(
	emp01_seq.nextval,'�ڱ浿',sysdate,1000);
insert into emp01 values(
	emp01_seq.nextval,'ȫ�浿',sysdate,1000);
commit;






