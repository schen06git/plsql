Create or replace PROCEDURE ZIP
     (area_prefix_combo_in     IN     Zipphone.area_prefix_combo%TYPE,
      zip_out                  OUT    Zipphone.zip1%TYPE)
IS
   v_zip             Varchar2(5);
BEGIN
     SELECT zip1 INTO v_zip
     FROM Zipphone
     WHERE area_prefix_combo = area_prefix_combo_in;
     zip_out := v_zip;
EXCEPTION
     WHEN no_data_found THEN
          dbms_output.put_line('There is no such zip.');
     WHEN too_many_rows THEN
          dbms_output.put_line('There are many records with that zip.');
     WHEN others THEN
          dbms_output.put_line(sqlerrm);
END zip;
/
