DO $$ DECLARE i INTEGER;
BEGIN FOR i IN 1..10 LOOP EXECUTE (
  'drop table temp_table_' || i || ';'
);
END LOOP;
END $$;
