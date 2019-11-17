CREATE TRIGGER insertar_transfencia
	AFTER INSERT ON transfencia
	FOR EACH STATEMENT
	EXECUTE PROCEDURE comprobar_transfencia();