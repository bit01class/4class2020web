drop table bbs01;
drop sequence bbs01_seq;
--
create table bbs01(
	num number primary key,
	sub varchar2(30) default '力格绝澜',
	nalja date,
	id varchar2(30),
	cntnt varchar2(2000)
);
create sequence bbs01_seq;
--dummy data
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title1',sysdate,'user1','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title2',sysdate,'user2','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title3',sysdate,'user3','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'java4',sysdate,'user4','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title5',sysdate,'user1','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'abc6',sysdate,'user2','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title7',sysdate,'user3','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'java8',sysdate,'user4','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'abc9',sysdate,'user1','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title10',sysdate,'user2','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'spring11',sysdate,'user3','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title12',sysdate,'user4','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title13',sysdate,'user1','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'java14',sysdate,'user2','趁公');
insert into bbs01 (num,sub,nalja,id,cntnt) values (bbs01_seq.nextval,'title15',sysdate,'user3','趁公');
commit;


