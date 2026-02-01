from sqlalchemy import create_engine

from py_sqlc_tester.config import POSTGRES_URL

engine = create_engine(url=POSTGRES_URL)
