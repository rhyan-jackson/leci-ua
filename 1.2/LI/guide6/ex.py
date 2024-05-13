import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])
    nome_a_pesquisar = input('Insira o nome > ')
    result = db.execute("SELECT * FROM contacts WHERE firstname LIKE ? or middlename LIKE ?", (nome_a_pesquisar, nome_a_pesquisar))
    rows = result.fetchall()
    for row in rows:
        print(row)
    print(f'Quantidade: {len(rows)} contatos.')
    db.close()
    
main(["", "database.db"])