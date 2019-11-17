CREATE OR REPLACE FUNCTION incremental(i integer) RETURNS integer AS $$
	BEGIN
		RETURN i+1;
	END;
$$ LANGUAGE plpgsql;
