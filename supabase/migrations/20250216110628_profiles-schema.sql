drop table if exists profiles;
TRUNCATE auth.users cascade;

create table 
  profiles (
    id UUID PRIMARY KEY REFERENCES auth.users (id) ON DELETE CASCADE NOT NULL,
    created_at TIMESTAMPTZ DEFAULT now() NOT NULL,
    username TEXT UNIQUE NOT NULL,
    full_name TEXT NOT NULL,
    mode TEXT DEFAULT 'dark' NOT NULL,
    product_updates BOOLEAN DEFAULT FALSE NOT NULL,
    announcements BOOLEAN DEFAULT FALSE NOT NULL
  );