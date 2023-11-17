Create or replace
trigger check_sal_trigger
before update of salary on employees
for each row
declare 
 --pragma AUTONOMOUS_TRANSACTION ;
begin
  if (:new.salary - :old.salary)/:old.salary > 0.1 then
  -- insert into journal (employee_id, user_name) values(:old.employee_id, USER);
  -- commit;
    raise_application_error(-20110, 'Valeur non valide');
  end if;

end;