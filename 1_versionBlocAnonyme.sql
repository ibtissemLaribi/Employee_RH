begin

  dbms_utility.get_dependency('TABLE','HR','EMPLOYEES');
  
exception
  when others then
      dbms_output.put_line('Erreur : '||sqlerrm);
end;
/