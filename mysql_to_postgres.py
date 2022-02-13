import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="woodcore",
    password="password123",
    port="3306",
    database="my_db"
)