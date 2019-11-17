CREATE OR REPLACE FUNCTION actualizar_clientes() RETURNS integer AS $$
DECLARE
    myTabla RECORD;
BEGIN
	RAISE NOTICE 'Actualizar el cliente con el id 3';

	FOR myTabla IN SELECT * FROM clientes LOOP

	        -- En la variable "myTabla" se almacena la fila completa de la tabla clientes.

		RAISE NOTICE 'El valor la columna nombre de la variable myTabla es: %', myTabla.nombre;
		RAISE NOTICE 'El valor la columna id de la variable myTabla es: %', myTabla.id;
		RAISE NOTICE 'El valor la columna cuenta de la variable myTabla es: %', myTabla.cuenta;
		
		UPDATE clientes SET nombre = 'cliente 5' WHERE id = 3;

		EXIT WHEN myTabla.nombre = 'cliente3';
	END LOOP;

	RAISE NOTICE 'Fin de actualizar el id %', myTabla.id;
	RAISE NOTICE  'Se ha actualizado con el valor: %', myTabla.nombre;

	RETURN 1;
END;
$$ LANGUAGE plpgsql;
