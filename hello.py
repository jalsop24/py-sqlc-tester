from py_sqlc_tester import config
from py_sqlc_tester.db import engine

from sqlalchemy import text


def main():
    print("Hello from py-sqlc-tester!")
    print(f"Postgres URL from config: {config.POSTGRES_URL}")

    with engine.connect() as conn:
        result = conn.execute(text("SELECT NOW()"))
        now = result.scalar_one()
        print(f"Current time from database: {now}")


if __name__ == "__main__":
    main()
