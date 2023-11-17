Create or replace trigger lock_email_update_trigger
before update of email on employees
--for each row
begin
----
   raise_application_error(-20100, 'L''adresse courriel ne peut être mise à jour.');
end;
/