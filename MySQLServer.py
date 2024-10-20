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
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            # Print success message
            print("Database 'alx_book_store' created successfully!")
    
    except mysql.connector.Error as e:  # Handling mysql.connector.Error specifically
        print(f"Error: '{e}' occurred while connecting to MySQL")

    finally:
        if connection.is_connected():
            # Close the cursor and connection
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

# Run the function
create_database()
