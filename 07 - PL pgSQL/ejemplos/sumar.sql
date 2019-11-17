CREATE OR REPLACE FUNCTION sumar(i numeric, j numeric)
RETURNS numeric AS $$
begin
RETURN i+j;
end;
$$ LANGUAGE plpgsql;
