drop table dept04;
drop sequence dept04_seq;
create table dept04(
	deptno number(2) primary key,
	dname varchar2(15),
	loc	varchar2(15)
);
create sequence dept04_seq;
--dummy
insert into dept04 values (dept04_seq.nextval,'����','����');
insert into dept04 values (dept04_seq.nextval,'ȸ��','����');
insert into dept04 values (dept04_seq.nextval,'����','�뱸');
insert into dept04 values (dept04_seq.nextval,'����','����');
insert into dept04 values (dept04_seq.nextval,'����','õ��');
commit;

select * from dept04;

select max(deptno) as "max" from dept04