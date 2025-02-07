-- Create the database (developer may need to do this manually)
-- CREATE DATABASE shop_local;

-- Connect to the database (optional)
-- \c shop_local

-- Create the `chats` table
CREATE TABLE chats (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    messages JSONB NOT NULL DEFAULT '[]'::jsonb,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    last_activity_at TIMESTAMP NOT NULL DEFAULT now(),
    sent_to_ghl BOOLEAN NOT NULL DEFAULT false
);

-- Indexes for faster queries
CREATE INDEX idx_chats_user ON chats(user_id);
