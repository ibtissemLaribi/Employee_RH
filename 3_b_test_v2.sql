declare
  v_sal employees.salary%type;
  sql_str varchar2(250);
     
  v_departments_tab employees_pkg.depts_tab_type;
  data_is_null exception;
begin
  v_sal:= &salary;
  
  employees_pkg.get_departments_by_sal(v_sal,v_departments_tab );
  
  
  for i in v_departments_tab.first .. v_departments_tab.last loop
    dbms_output.put_line(v_departments_tab(i).department_id);
  end loop;
  
  exception

    when others then
      dbms_output.put_line('Erreur : '||sqlerrm);
end;
/

