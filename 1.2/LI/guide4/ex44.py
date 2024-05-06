# import json
# def main():

    # print(json.dumps(data, indent=4))
# main()

import json
import time
import psutil

init_time = time.time()

with open('json_version.json', 'w') as json_file:
    data = {"stats": []}
    for i in range(20):
        actual_time = time.time()
        print(actual_time - init_time)
        cpu_percent = psutil.cpu_percent(interval=1)
        bytes_sent = psutil.net_io_counters()[0]
        bytes_received = psutil.net_io_counters()[1]
        
        data["stats"].append({"time": actual_time, "time_after_exec": actual_time - init_time, "bytes_sent": bytes_sent, "bytes_receiv": bytes_received, "cpu_occupation_percent": cpu_percent})
    json.dump(data, json_file, indent=4)
        
    