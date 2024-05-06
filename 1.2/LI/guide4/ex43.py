import csv
import time
import psutil

init_time = time.time()

with open('logs.csv', 'w') as csv_file:
    csv_writer = csv.DictWriter(csv_file, fieldnames=["time", "time_after_exec", "bytes_sent", "bytes_receiv", "cpu_occupation_percent"])
    csv_writer.writeheader()

    for i in range(20):
        actual_time = time.time()
        print(actual_time - init_time)
        cpu_percent = psutil.cpu_percent(interval=1)
        bytes_sent = psutil.net_io_counters()[0]
        bytes_received = psutil.net_io_counters()[1]

        csv_writer.writerow({"time": actual_time, "time_after_exec": actual_time - init_time, "bytes_sent": bytes_sent, "bytes_receiv": bytes_received, "cpu_occupation_percent": cpu_percent})