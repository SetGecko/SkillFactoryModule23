CREATE 
OR REPLACE FUNCTION print_client_name() RETURNS VOID AS $$ DECLARE client RECORD;
BEGIN 
SELECT 
  * 
FROM 
  clients 
WHERE 
  name = 'Иван Владиморович К' INTO client;
RAISE NOTICE 'Имя клиента = %', 
client.x;
EXCEPTION WHEN OTHERS THEN RAISE NOTICE 'field doesn''t exist';
END $$ LANGUAGE 'plpgsql';--вызов
DO $$ BEGIN PERFORM print_client_name();END $$;
