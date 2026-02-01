-- migrate:up
CREATE TABLE books (
  id            BIGSERIAL PRIMARY KEY,
  title         TEXT NOT NULL,
  description   TEXT NOT NULL,
  author_id     BIGINT REFERENCES authors(id) NOT NULL
);

-- migrate:down
DROP TABLE books;
