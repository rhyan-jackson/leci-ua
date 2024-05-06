import csv
import random

with open('data_created.csv', 'w') as csv_file:
    csv_writer = csv.DictWriter(csv_file, fieldnames=["time", "value", "nome"])
    csv_writer.writeheader()

    for i in range(1, 20):
        csv_writer.writerow({"time": 1, "value": random.randint(1,100), "nome": "pilinha"})
        