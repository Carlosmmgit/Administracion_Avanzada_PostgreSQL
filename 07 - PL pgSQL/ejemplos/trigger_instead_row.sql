CREATE TRIGGER insertar_vista
	INSTEAD OF INSERT ON myVista
	FOR EACH ROW
	EXECUTE PROCEDURE insertar_nueva_vista();