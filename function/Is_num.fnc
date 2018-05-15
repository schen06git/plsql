create or replace function is_num
   ( p_string in varchar2)
   return number
   as
       l_number number;
   begin
       l_number := p_string;
       return 1;
   exception
       when others then
           return 0;
   end;
   /
