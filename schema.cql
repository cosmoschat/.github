CREATE KEYSPACE IF NOT EXISTS cosmos WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 3 };

CREATE TABLE IF NOT EXISTS cosmos.users (
    id varchar,
    username text,
    password text,
    email text,
    tag text,
    public_flags int,
    private_flags int,
    registration_ip_hash text,
    created_at timestamp,
    primary key ( id, email )
);

CREATE TABLE IF NOT EXISTS cosmos.user_tags (
    username text,
    tag text,
    user_id text,
    primary key (( username, tag ))
);

SELECT * FROM cosmos.users;
