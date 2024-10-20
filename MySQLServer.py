import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server
        connection = mysql.connector.connect(
            host='localhost',
            user='root',            # Replace with your MySQL username
            password='yourpassword' # Replace with your MySQL password
        )
        
        if connection.is_connected():
            # Create a cursor object
            cursor = connection.cursor()
            
            # SQL query to create the database
     
