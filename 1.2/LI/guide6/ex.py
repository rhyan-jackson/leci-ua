import sqlite3 as sql
import sys
def main(argv):
    db = sql.connect("database.db") # estabelecer ligação à BD
    db.close() # terminar ligação
    

main(sys.argv)