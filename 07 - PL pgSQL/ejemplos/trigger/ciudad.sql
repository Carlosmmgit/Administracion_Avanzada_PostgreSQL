CREATE OR REPLACE FUNCTION trg_ins() RETURNS trigger AS $$
begin
update ciudad set poblacion=poblacion+1 where ciudad_id=NEW.ciudad_id;
return null;
end; $$ language plpgsql;
