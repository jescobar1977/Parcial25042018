--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_1" (a in number,b in number,c in number)
RETURN VARCHAR2 IS OUTFUNTION VARCHAR2(255);
BEGIN
  OUTFUNTION := a || '/' || (a*b) || '/John';
  if b >= c then
    OUTFUNTION  := a || '/' || (a*b) || '/Escobar';
  end if;
  RETURN OUTFUNTION;
  dbms_output.put_line(OUTFUNTION);
END;
--------------------------------------------------------
--  DDL for Function FUNCTION_2
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_2" (a in VARCHAR2,b in VARCHAR2,c in VARCHAR2)
RETURN VARCHAR2 IS OUTFUNTION VARCHAR2(255);
rev VARCHAR2(255);
cadena varchar(255);
numvoc number;
BEGIN
  numvoc := 0;
  for i in reverse 1..LENGTH(a)  loop
     rev := rev || substr(a,i,1);
  end loop;
  if a=rev
  then
     OUTFUNTION := 'true';
  else
     OUTFUNTION := 'false';
  end if;
  for i in 1..LENGTH(b) loop
    if mod(i,2) = 0 then
      cadena := cadena || UPPER(substr(b,i,1));
    else
      cadena := cadena || substr(b,i,1);
    end if;
  end loop;
  for i in 1..LENGTH(c) loop
    if substr(b,i,1) = 'a' then
      numvoc:= numvoc+1;
    end if;
    if substr(b,i,1) = 'a' then
      numvoc:= numvoc+1;
    end if;
    if substr(b,i,1) = 'e' then
      numvoc:= numvoc+1;
    end if;
    if substr(b,i,1) = 'i' then
      numvoc:= numvoc+1;
    end if;
    if substr(b,i,1) = 'o' then
      numvoc:= numvoc+1;
    end if;
    if substr(b,i,1) = 'u' then
      numvoc:= numvoc+1;
    end if;
  end loop;
  OUTFUNTION := OUTFUNTION || '/' || cadena || '/' || numvoc || '/' || LENGTH(c);
  dbms_output.put_line(OUTFUNTION);
  RETURN OUTFUNTION;
END;
