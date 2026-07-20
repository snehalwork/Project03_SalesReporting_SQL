import pandas as pd
from sqlalchemy import create_engine

engine = create_engine(...)

query = open("sql/monthly_sales.sql").read()

df = pd.read_sql(query, engine)

print(df)