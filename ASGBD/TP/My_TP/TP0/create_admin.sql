/**CREATE THE TABLESPACES**/

CREATE TABLESPACE OUR_TABLE
DATAFILE 'OUR_TABLE.DAT'
SIZE 100M
AUTOEXTEND ON
ONLINE;

CREATE TEMPORARY TABLESPACE OUR_TEMPORARY_TABLE
TEMPFILE 'OUR_TEMPORARY_TABLE'
SIZE 100M
AUTOEXTEND ON;

CREATE USER ME
IDENTIFIED BY ME
DEFAULT TABLESPACE OUR_TABLE
TEMPORARY TABLESPACE OUR_TEMPORARY_TABLE;

GRANT ALL PRIVILEGES TO ME;