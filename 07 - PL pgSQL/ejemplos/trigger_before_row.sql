CREATE TRIGGER comprobar_actualizacion
	BEFORE UPDATE OF balance ON cuentas
	FOR EACH ROW
	EXECUTE PROCEDURE comprobar_actualizacion_cuentas();