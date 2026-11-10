"""MySQL connection helpers."""
import os
import mysql.connector
from mysql.connector import Error
from dotenv import load_dotenv

load_dotenv()


def get_connection():
    """Return a new MySQL connection using env vars."""
    try:
        return mysql.connector.connect(
            host=os.getenv("DB_HOST", "localhost"),
            port=int(os.getenv("DB_PORT", "3306")),
            user=os.getenv("DB_USER", "root"),
            password=os.environ["MYSQL_PASSWORD"],
            database=os.getenv("DB_NAME", "student_manager"),
        )
    except Error as e:
        raise ConnectionError(f"Could not connect to MySQL: {e}") from e


def health_check() -> bool:
    """Return True if the DB is reachable."""
    try:
        conn = get_connection()
        conn.close()
        return True
    except ConnectionError:
        return False
