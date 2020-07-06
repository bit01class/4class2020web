-- 
declare
--	v_row emp02%rowtype;
	type emp02row is record(
		psabun emp02.sabun%type,
		pname emp02.name%type,
		pnalja emp02.nalja%type,
		ppay emp02.pay%type
	);
	v_row emp02row;
	cur sys_refcursor;
begin
	emp02list(cur);
	loop
		fetch cur into v_row;
		exit when cur%notfound;
		dbms_output.put_line(v_row.psabun||','||
		v_row.pname||','||v_row.pnalja||','||v_row.ppay);
	end loop;
	close cur;
end;
/