CREATE OR REPLACE FUNCTION restar(i numeric, j numeric)
RETURNS void AS $$
DECLARE d numeric;
begin
d:= i-j;
raise notice 'La resta es: %',d;
RETURN;
end;
$$ LANGUAGE plpgsql;

