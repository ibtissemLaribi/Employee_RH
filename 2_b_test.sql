-- *** creer la table journal
/*
drop table journal;
create table journal(
  employee_id number(6,0) not null,
  user_name varchar2(100) not null,
  createdon date default sysdate
);
*/--
begin
  update employees set salary = 5000 
  where employee_id = 116;
  commit;
 exception
  
    when others then
      dbms_output.put_line('Erreur : '||sqlerrm);
end;
/