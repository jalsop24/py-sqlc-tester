from py_sqlc_tester.db import authors, models
from py_sqlc_tester.db import engine


def get_authors() -> list[models.Author]:
    with engine.connect() as conn:
        querier = authors.Querier(conn)
        return list(querier.list_authors())
