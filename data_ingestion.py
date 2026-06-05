import pandas as pd
import os


csv_folder = "data/raw/"

files = os.listdir(csv_folder)

for file in files:
    if file.endswith(".csv"):
        df = pd.read_csv(csv_folder + file)
        print(f"\n📄 File: {file}")
        print("Shape:", df.shape)
        print("Dtypes:\n", df.dtypes)
        print("Head:\n", df.head())