import sys
import pandas as pd

print ('Arguments', sys.argv)

month = int(sys.argv[1])


df = pd.DataFrame({"Day":[1,3],"num_passengers":[3,4]})
df["month"] = month

print(df.head())

print(f"hello pipeline, month ={month}")