import csv
import time

timeStart = time.time()


with open('weather.csv', "r") as csv_file:
    csv_reader = csv.DictReader(csv_file, delimiter=',')

    value = None
    temperatureCount = 0
    temperatureSum = 0
    temperatureMax = 0
    temperatureMin = 100
    
    for row in csv_reader:
        if row['MeasureLabel'] == 'Temperature':
            value = float(row['Value'])
            temperatureSum += value
            temperatureCount += 1
            if temperatureMax < value:
                temperatureMax = value
            if temperatureMin > value:
                temperatureMin = value

print(f'Higher temperature: {temperatureMax}')
print(f'Lower temperature: {temperatureMin}')
print(f'Average of temperatures: {temperatureSum / temperatureCount}')

print(time.time() - timeStart)