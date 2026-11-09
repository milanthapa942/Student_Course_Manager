# Software Development – Week 2 Progress Report

**Group Members:**
1. Sobita Khadka
2. Milan Thapa


**Week:** Week 2  
**Topic:** Python and MySQL Database Operations

---

## 1. Introduction
During Week 2, we practised connecting Python with a MySQL database and performing basic database operations using Python. 

The main purpose was to understand how our application can communicate with the database, retrieve information, insert new records, and delete records.

## 2. Database Used
**Database name:** `student_manager`
**Table used:** `students` (and `courses` for foreign keys)

### Student Table Structure
| Column | Data Type | Description |
|---|---|---|
| student_id | INT | Unique ID and primary key |
| first_name | VARCHAR(50) | Student's first name |
| last_name | VARCHAR(50) | Student's last name |
| email | VARCHAR(100) | Unique email |
| date_of_birth | DATE | DOB |
| course_id | INT | Foreign key linking to courses |
| enrolled_on | DATE | Date of enrollment |

## 3. Tools and Technologies
- Python
- MySQL Database
- MySQL Connector for Python (`mysql-connector-python`)
- Visual Studio Code
- MySQL Workbench

## 4. Connecting Python to MySQL
We established a connection using environment variables to keep passwords secure.

```python
import mysql.connector
import os
from dotenv import load_dotenv

load_dotenv()

connection = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database="student_manager"
)
print("Connected successfully!")
cursor = connection.cursor()