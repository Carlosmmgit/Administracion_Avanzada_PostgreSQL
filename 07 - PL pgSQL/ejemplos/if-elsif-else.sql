CREATE OR REPLACE FUNCTION par_mejorada(num integer) RETURNS varchar AS $$
DECLARE texto varchar;
BEGIN
	IF (num%2=0) THEN
		texto := 'El número ' || num || ' es par';
		
	ELSIF num%2!=0 THEN
		texto := 'El número ' || num || ' es impar';
		
	ELSE
		texto := 'El parámetro introducido no es un número';
	
	END IF;
	
	RETURN texto;

END;
$$ language plpgsql;
