CREATE OR REPLACE FUNCTION incremental() RETURNS void AS $$
DECLARE rec numeric;
BEGIN
	rec:=0;
	
	LOOP
		RAISE NOTICE '%',rec;
		rec:=rec+1;
		EXIT WHEN rec>10;
	END LOOP;
RETURN;
END;
$$ LANGUAGE plpgsql;
