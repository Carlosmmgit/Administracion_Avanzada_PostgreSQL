CREATE OR REPLACE FUNCTION div(a numeric, b numeric)
RETURNS numeric AS $$
DECLARE result numeric;
begin
result=a/b;
EXCEPTION
When others then
raise notice 'Valor incorrecto para el segundo parámetro. Debe ser un valor distinto de cero.';
return result;
end;
$$ LANGUAGE plpgsql;
