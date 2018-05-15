create or replace function has_num  ( 
 p_string varchar2 )
 return number
is
begin
 -- use regexp_instr function
 if regexp_instr(p_string, '[0-9]') > 0 then
    return 1;
 else
    return 0;
 end if;
end;
/
