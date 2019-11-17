CREATE OR REPLACE FUNCTION par(num integer) RETURNS varchar AS $$
DECLARE texto varchar;
BEGIN
	IF (num%2=0) THEN
		texto := 'El número ' || num || ' es par';
	END IF;
	
	RETURN texto;

END;
$$ language plpgsql;
