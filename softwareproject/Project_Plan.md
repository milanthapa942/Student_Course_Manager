# Project Plan – Student Course Manager

## 1. Project Overview
The aim of this project is to develop a Python-based Student Course Manager application that allows administrators to manage student records and their course enrollments through a graphical user interface.

The application will use Streamlit for the UI and MySQL for persistent data storage.

## 2. Project Purpose
The purpose is to create a simple system that makes it easier to manage student information, assign them to courses, and view enrollment details.

## 3. Intended Users
- University/College administrators.
- Staff responsible for student enrollment.

## 4. Functional Requirements
- FR1: Add new students with validation (name, email, DOB).
- FR2: View all students.
- FR3: Update existing student details.
- FR4: Delete students.
- FR5: Search students by name or email.
- FR6: Assign students to specific courses.
- FR7: Display student details along with their course names.
- FR8: Manage course listings.

## 5. Non-Functional Requirements
- Validate user input and display clear error messages.
- Store database changes reliably using transactions (`commit()`).
- Provide a simple, user-friendly Streamlit interface.
- Organise Python code into reusable modules (e.g., `db.py`, `crud.py`, `models.py`).
- Write automated tests using `pytest`.

## 6. Database
**Database:** `student_manager`

**Main tables:**
- `courses` (course_id, course_code, course_name, credits)
- `students` (student_id, first_name, last_name, email, date_of_birth, course_id)

The `students` table contains a Foreign Key (`course_id`) linked to the `courses` table with `ON DELETE SET NULL` constraint.

## 7. Technologies
- **Python** – application logic and backend.
- **Streamlit** – graphical user interface.
- **MySQL** – database management.
- **mysql-connector-python** – Python and MySQL connection.
- **GitHub** – version control and collaboration.
- **pytest** – automated testing.
- **python-dotenv** – secure environment variable management.

## 8. Project Milestones
| Week | Main activities |
|---|---|
| Weeks 1–2 | Project planning, requirements, and DB practice |
| Week 3 | Database integration and UI design |
| Weeks 4–5 | Student CRUD implementation and Streamlit forms |
| Week 6 | Testing, validation, and error handling |
| Week 7 | Documentation and final improvements |
| Week 8 | Final testing, demonstration, and submission |

## 9. Team Organisation
- **[Sobita Khadka]** – Database Management
- **[Milan Thapa]** – Student Module and Backend
- **[Milan Thapa]** – Course Module
- **[Sobita Khadka]** – Testing, Documentation and Collaboration

## 10. Expected Outcome
The final result will be a working Student Course Manager with full CRUD operations, search functionality, course assignments, MySQL integration, and a Streamlit interface.