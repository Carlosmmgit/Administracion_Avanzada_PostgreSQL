CREATE OR REPLACE FUNCTION multi()
RETURNS void AS $$
DECLARE rec numeric;
begin
for rec in 0..10 by 2 loop
raise notice '%',rec;
end loop;
RETURN;
end;
$$ LANGUAGE plpgsql;
