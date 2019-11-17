CREATE OR REPLACE FUNCTION aumentar()RETURNS void AS $$
DECLARE rec numeric;
BEGIN
	rec:=0;
	
	WHILE rec<=10 LOOP
		RAISE notice '%',rec;
		rec:=rec+1;
	END LOOP;
RETURN;
END;
$$ LANGUAGE plpgsql;
