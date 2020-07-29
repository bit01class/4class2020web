drop table dept04;
drop sequence dept04_seq;
create table dept04(
	deptno number(2) primary key,
	dname varchar2(15),
	loc	varchar2(15)
);
create sequence dept04_seq;
--dummy
insert into dept04 values (dept04_seq.nextval,'영업','서울');
insert into dept04 values (dept04_seq.nextval,'회계','세종');
insert into dept04 values (dept04_seq.nextval,'생산','대구');
insert into dept04 values (dept04_seq.nextval,'관리','세종');
insert into dept04 values (dept04_seq.nextval,'물류','천안');
commit;

select * from dept04;

select max(deptno) as "max" from dept04