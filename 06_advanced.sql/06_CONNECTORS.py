import mysql.connector

config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "hello_mysql",
    "user": "root",
    "password": "admin1234"
    }

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM users"
cursor.execute(query)
results = cursor.fetchall()

for row in results:
    print(row)

cursor.close()
connection.close()