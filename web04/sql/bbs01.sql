drop table bbs01;
drop sequence bbs01_seq;
--
create table bbs01(
	num number primary key,
	sub varchar2(60) default '제목없음',
	nalja date,
	id varchar2(30),
	cntnt varchar2(2000),
	ref number,
	no number,
	lev number
);
create sequence bbs01_seq;
--dummy data

commit;


