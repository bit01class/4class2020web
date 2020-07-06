-- emp02list.sql
create or replace procedure emp02list
(cur out sys_refcursor)
is
begin
	open cur for select * from emp02;
end;
/