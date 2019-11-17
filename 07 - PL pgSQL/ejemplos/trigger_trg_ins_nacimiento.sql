CREATE TRIGGER trg_ins_nacimiento
	AFTER INSERT ON nacimiento
	FOR EACH ROW
	EXECUTE PROCEDURE trg_ins();