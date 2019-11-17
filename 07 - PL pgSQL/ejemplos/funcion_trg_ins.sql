CREATE OR REPLACE FUNCTION trg_ins() RETURNS trigger AS $$
BEGIN
	INSERT INTO ciudad VALUES (3, 0);
	UPDATE ciudad SET n_habitantes=n_habitantes+1;
RETURN NULL;
END; $$ language plpgsql;
