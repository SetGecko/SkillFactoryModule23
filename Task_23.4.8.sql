ALTER TABLE orders ADD COLUMN date_changed TIMESTAMP;
CREATE OR REPLACE FUNCTION update_date_changed() RETURNS TRIGGER AS $$
BEGIN
   NEW.date_changed = now();
   RETURN NEW;  
END;
$$ language 'plpgsql';
CREATE TRIGGER update_date_changed_triger
BEFORE UPDATE ON orders
FOR EACH ROW EXECUTE PROCEDURE update_date_changed();
