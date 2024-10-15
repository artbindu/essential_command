<!-- # Database Learning: MySQL -->

## MySQL Learning

1. Create, Delete & View Database:
```sql
-- Create Database
CREATE DATABASE database_name;
-- Use Database
USE database_name;
-- View Database

-- Delete Database
DROP DATABASE database_name;
```

2. Create, Delete & View User
```sql
-- Create user
CREATE USER user_name;
-- Use User

-- View User
select session_user;
-- Delete User
DROP USER user_name;
```

3. Show All Tables in Database
```sql
-- Show All tables under specific db
USE database_name;
SHOW TABLES;

-- Show tables under specific schema with table type
SELECT table_name FROM INFORMATION_SCHEMA.TABLES
WHERE table_type = 'BASE TABLE' AND table_schema = 'database_name';
```

4. Get Version
```sql
select version();
```

5. DDL(Data Definition Language) Query:
```sql
-- Create Table
CREATE TABLE table_name (col_name_1 data_type primary key, col_name_2 data_type, col_name_3 data_type, ...);
CREATE TABLE table_name FROM (SELECT * FROM another_table_name);

-- Describe Table Info and Column data type
DESC table_name;

-- Drop Table (delete table)
DROP TABLE table_name;
DROP TABLE IF EXISTS table_name;

-- Alter Table 
-- Add, delete columns in an existing table
ALTER TABLE table_name ADD column_name data_type;
ALTER TABLE table_name DROP COLUMN column_name;
-- Modify column & it's data type in an existing table
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;
ALTER TABLE table_name MODIFY COLUMN column_name new_data_type;
ALTER TABLE table_name MODIFY colm_name data_type NOT NULL;
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
    MODIFY COLUMN old_col_name_1 new_data_type,
    MODIFY COLUMN old_col_name_2 new_data_type;
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
```   

8. DCL (Data Control Language) Query:
```sql

```   

9.  TCL (Transaction Control language) Query:
```sql

```   



