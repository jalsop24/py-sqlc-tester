-- name: GetTransaction :one
SELECT * FROM transactions
WHERE id = $1 LIMIT 1;

-- name: CreateTransaction :one
INSERT INTO transactions (
  amount, 
  description
) VALUES (
  $1, $2
)
RETURNING *;

-- name: GetBalance :one
SELECT 
    COALESCE(SUM(amount), 0)::NUMERIC(10, 4) AS balance 
FROM transactions;

-- name: CountTransactions :one
SELECT count(*) FROM transactions;