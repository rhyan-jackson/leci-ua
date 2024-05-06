import json

with open('json_version.json') as json_file:
    json_loaded = json.load(json_file)
    for dic in json_loaded["stats"]:
        print(type(dic))
    