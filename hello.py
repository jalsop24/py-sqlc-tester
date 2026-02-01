from py_sqlc_tester import config, authors as authors_service
from py_sqlc_tester.db import engine

from sqlalchemy import text


def main():
    print("Hello from py-sqlc-tester!")
    print(f"Postgres URL from config: {config.POSTGRES_URL}")

    with engine.connect() as conn:
        result = conn.execute(text("SELECT NOW()"))
        now = result.scalar_one()
        print(f"Current time from database: {now}")

    authors = authors_service.get_authors()
    print("Authors in database:")
    for author in authors:
        print(f"- {author.id}: {author.name}")


if __name__ == "__main__":
    main()
