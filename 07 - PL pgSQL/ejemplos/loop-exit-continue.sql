CREATE OR REPLACE FUNCTION suma_uno_dos() RETURNS numeric AS $$
DECLARE rec numeric;
BEGIN
	rec:=0;

	<<suma_uno>>	
	LOOP
		RAISE NOTICE 'Primer bucle %',rec;
		rec:=rec+1;
		EXIT WHEN rec>7;
		RAISE NOTICE 'Suma uno %',rec;
				
		<<suma_dos>>
		LOOP
			RAISE NOTICE 'Bucle interno %',rec;
			rec:=rec+2;
			CONTINUE suma_uno;
			RAISE NOTICE 'Más dos %',rec;
		END LOOP suma_dos;

	END LOOP suma_uno;

RETURN rec;
END;
$$ LANGUAGE plpgsql;

