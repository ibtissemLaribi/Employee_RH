
declare
  update_not_allowed exception;
  pragma exception_init (update_not_allowed, -20100);
  error_msg varchar2(100);
begin
  update EMPLOYEES set email = 'SSSSS@' 
  where employee_id = 116;
  
  exception
    when update_not_allowed then
      dbms_output.put_line('Erreur : Il n''est pas permis de mettre à jour l''adresse courriel.');
    when others then
      dbms_output.put_line('Erreur : '||sqlerrm); 
end;
/