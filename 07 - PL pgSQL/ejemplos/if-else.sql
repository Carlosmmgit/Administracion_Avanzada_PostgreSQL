CREATE OR REPLACE FUNCTION cliente(id_cliente numeric)
RETURNS void AS $$
DECLARE tupla RECORD;
BEGIN
	SELECT INTO tupla* FROM clientes WHERE id=id_cliente;

	IF FOUND THEN
		RAISE NOTICE 'Nombre de cliente: %',tupla.nombre;
		RAISE NOTICE 'Número de cuenta: %',tupla.cuenta;
	
	ELSE
		RAISE NOTICE 'El cliente no existe';

	END IF;

	RETURN;
END;
$$ LANGUAGE plpgsql;

