CREATE OR REPLACE FUNCTION busqueda(x numeric) RETURNS varchar AS $$
DECLARE msg varchar;
BEGIN
	CASE x
		WHEN 2, 4, 6, 8 THEN
			msg := 'Número par';

		WHEN 1, 3, 5, 7, 9 THEN
			msg := 'Número impar';
			
		ELSE
			msg := 'Otro número';

	END CASE;
	
	RETURN msg;
END;
$$ language plpgsql;
