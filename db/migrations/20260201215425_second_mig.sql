-- migrate:up
ALTER TABLE authors ADD COLUMN birthdate DATE;

-- migrate:down

