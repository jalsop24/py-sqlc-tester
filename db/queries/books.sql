-- name: GetBook :one
SELECT * FROM books
WHERE id = $1 LIMIT 1;

-- name: CreateBook :one
INSERT INTO books (
  title, description, author_id
) VALUES (
  $1, $2, $3
)
RETURNING *;