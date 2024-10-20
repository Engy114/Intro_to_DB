-- Use the alx_book_store database
USE alx_book_store;

-- Retrieve the full description of the 'Books' table (with correct case)
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT, EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Books'  -- Ensure the table name is capitalized
AND TABLE_SCHEMA = 'alx_book_store';
