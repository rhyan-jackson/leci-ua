import os

directories_list = os.listdir('/home/rhyan/Documents/ua/FPP/aula06/') 

for archive in directories_list:
    print(archive, os.stat(archive).st_size)
    
