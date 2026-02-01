# Py SQLC Test Project

Uses `dbmate` to deal with migrations. SQLC reads the migrations from `db/migrations` to determine the types for the models fields.

New migrations should be added to `db/migrations`. Use `dbmate migrate` to apply the migrations and re-generate the schema file.

Use `sqlc generate` to convert `db/queries` into python queries. Also converts `db/migrations` into python dataclasses.
