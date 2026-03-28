-- migrate:up
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    amount DECIMAL(10, 4) NOT NULL,
    description TEXT,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- migrate:down
DROP TABLE transactions;
