CREATE USER auth with password '@auth_pwd@';
CREATE USER api with password '@api_pwd@' INHERIT;
CREATE USER apisu with password '@apisu_pwd@' SUPERUSER;
CREATE USER esi with password '@esi_pwd@';
GRANT CONNECT ON DATABASE @database@ TO auth;
GRANT CONNECT ON DATABASE @database@ TO api;
GRANT CONNECT ON DATABASE @database@ TO esi;
CREATE ROLE authenticated;
CREATE SCHEMA AUTHORIZATION auth;
CREATE SCHEMA AUTHORIZATION api;
CREATE SCHEMA AUTHORIZATION esi;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA esi TO authenticated;
GRANT USAGE ON SCHEMA auth TO esi;
GRANT api to authenticated;
