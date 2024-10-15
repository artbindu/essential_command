<!-- # Database Learning: PostgreSQL -->

## PlpgSQL Learning

1. Create, Delete & View Database:
```sql
-- Create Database
CREATE DATABASE database_name;
-- Use Database

-- View Database
SELECT current_database();
-- Delete Database
DROP DATABASE database_name;
```

2. Create, Delete & View User
```sql
-- Create user
CREATE USER user_name;
-- Use User

-- View User
SELECT current_user(), current_user;
-- Delete User
DROP USER user_name;
```

3.Show All Tables in a Database
```sql
SELECT * FROM pg_catalog.pg_tables;
SELECT * FROM pg_catalog.pg_tables WHERE schemaname='public';
```

4. Get Version
```sql
SELECT version();
```

5. DDL(Data Definition Language) Query:
```sql
-- Create Table
CREATE TABLE table_name (col_name_1 data_type primary key, col_name_2 data_type, col_name_3 data_type, ...);
CREATE TABLE table_name FROM (SELECT * FROM another_table_name);

-- Describe Table Info and Column data type
SELECT * FROM information_schema.columns WHERE table_name = 'table_name';
SELECT column_name as Field, data_type as Type,
	is_nullable as Null, column_default as Default 
    FROM information_schema.columns WHERE table_name = 'table_name';

-- Drop Table (delete table)
DROP TABLE table_name;
DROP TABLE IF EXISTS table_name;

-- Alter Table 
-- Add, delete columns in an existing table
ALTER TABLE table_name ADD column_name data_type;
ALTER TABLE table_name DROP COLUMN column_name;
-- Modify column & it's data type in an existing table
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;
ALTER TABLE table_name ALTER COLUMN column_name TYPE new_data_type;
-- Alter table with multiple columns
ALTER TABLE table_name 
    ADD col_name_1 data_type,
    ADD col_name_2 data_type;
ALTER TABLE table_name 
    DROP COLUMN col_name_1,
    DROP COLUMN col_name_2;
ALTER TABLE table_name 
    RENAME COLUMN old_col_name_1 TO new_col_name_1,
    RENAME COLUMN old_col_name_2 TO new_col_name_2;
ALTER TABLE table_name 
    ALTER COLUMN old_col_name_1 TYPE new_data_type,
    ALTER COLUMN old_col_name_2 TYPE new_data_type;
```

6. DQL (Data Query Language) Query:
```sql
-- View all data in the table
SELECT * FROM table_name;
-- View selected columns data
SELECT col_name_1, col_name_2, ... FROM table_name;
-- View data with some condition
SELECT * FROM table_name where condition;
``` 

7. DML (Data Manipulation Language) Query:
```sql
-- insert data
INSERT INTO table_name (col_name_1, col_name_2, ...) VALUES (col_name_1_val, col_name_2_val, ...);
INSERT INTO table_name VALUES (col_name_1_val, col_name_2_val, ...);
-- update data
UPDATE table_name SET col_name_1 = value_1, col_name_2 = value_2, ... where condition;
-- Delete all records
DELETE FROM table_name;
TRUNCATE TABLE table_name;
DELETE FROM table_name WHERE condition;
``` 




