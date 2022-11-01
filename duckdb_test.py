import duckdb

con = duckdb.connect(database=':memory:')

# data_file = '/config/workspace/metadata.csv'

data_file = 'https://datacoves-sample-data-public.s3.us-west-2.amazonaws.com/PERSONAL_LOANS.csv'
con.query('install httpfs; load httpfs;')



query = f"SELECT count(*) FROM '{data_file}';"
con.execute(query)

print(query)
print(con.fetchall())

print("\n##########\n")



# query = f"SELECT distinct relation FROM '{data_file}';"
# con.execute(query)
# print(query)
# print(con.fetch_df())

query = f"SELECT * FROM '{data_file}';"
rel = con.from_query(query)
# print(rel)
df = rel.df()
print(df.describe())
