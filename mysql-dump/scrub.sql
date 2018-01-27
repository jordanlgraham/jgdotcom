TRUNCATE TABLE cache;
UPDATE system SET STATUS = 1 WHERE name = 'stage_file_proxy';
UPDATE system SET STATUS = 0 WHERE name = 'backup_migrate';
REPLACE INTO variable SET name = 'stage_file_proxy_hotlink', value = 'i:1;';
REPLACE INTO variable SET name = 'stage_file_proxy_origin', value = 's:23:"http://jordangraham.com";';


-- Set some simple directories for private and temporary files
UPDATE variable SET value = 's:19:"sites/default/files";' WHERE name LIKE 'file_private_path';
UPDATE variable SET value = 's:4:"/tmp";' WHERE name LIKE 'file_temporary_path';