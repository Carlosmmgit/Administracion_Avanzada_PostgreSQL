CREATE OR REPLACE FUNCTION cliente_cursor() RETURNS void AS $$
DECLARE 
	cur CURSOR FOR SELECT * FROM clientes;
	rec RECORD;
BEGIN
	OPEN cur;
	FETCH cur INTO rec;
	
	WHILE FOUND LOOP
		RAISE notice 'Nombre de cliente: %', rec.nombre;
		RAISE notice 'Número de cuenta: %', rec.cuenta;
		FETCH cur INTO rec;
	END LOOP;
	
	RAISE notice 'No hay más clientes';
	
	CLOSE cur;
	RETURN;
END; $$ language plpgsql;
