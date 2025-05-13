-- select pgsql VERSION
SELECT version();

-- database list
\l

-- database switch
\c university_management;

-- find all TABLE
\du

-- previous command EXECUTE
\g

-- sow all command
\?

-- clean all command
\! cls


-- ##user management

-- create user
CREATE USER admin WITH ENCRYPTED PASSWORD 'admin';

-- grant permission
GRANT ALL PRIVILEGES ON DATABASE university_management TO admin;


-- reset PASSWORD
ALTER USER admin WITH ENCRYPTED PASSWORD 'admin';
