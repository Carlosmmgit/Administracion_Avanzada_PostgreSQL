CREATE OR REPLACE FUNCTION temperatura(tem numeric) RETURNS varchar AS $$
DECLARE sms varchar;
BEGIN
	CASE WHEN tem < 0 THEN
		sms := 'Hielo';

	WHEN tem between 0 and 10 THEN
		sms := 'Frio';

	WHEN tem > 10 THEN
		sms := 'NORMAL';

	ELSE
		sms := 'Sin determinar';
	END CASE;
	
	RETURN sms;
END;
$$ language plpgsql;
