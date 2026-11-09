# Team Workflow – Student Course Manager

## 1. Team Members and Main Responsibilities

### [Sobita Khadka] – Database Management
- Maintain the MySQL `student_manager` database.
- Ensure foreign key constraints and relationships are working correctly.
- Help team members with SQL queries and data consistency.
- Support database integration and troubleshoot connection errors.

### [Milan Thapa] – Student Module and Backend
- Develop reusable Python functions for MySQL connection (`db.py`).
- Implement backend CRUD operations for Students (`crud.py`).
- Implement data validation rules (`validators.py`).
- Develop the main Streamlit app pages (`app.py`).

### [Milan Thapa] – Course Module
- Manage the `courses` table and seed data.
- Implement the backend function to list all courses for the UI dropdown.
- Ensure that assigning a course to a student works correctly in the database.

### [Sobita Khadka] – Testing, Documentation and Collaboration
- Maintain the GitHub repository and review Pull Requests.
- Prepare and update `README.md`.
- Write automated tests using `pytest` for models and validators.
- Coordinate team contributions and prepare the final presentation.

---

## 2. Team Collaboration Rules
1. Each member takes responsibility for their assigned module.
2. Communicate regularly via chat/meetings.
3. Commit and push code to GitHub regularly (at least twice a week).
4. Use Pull Requests (PRs) for code review before merging.
5. Do not push sensitive data (like the `.env` password file) to GitHub.
6. Test code locally before pushing.
7. All members participate in integration testing.

---

## 3. Project Communication and GitHub Workflow
- GitHub is used for code and documentation.
- Code must be modular (separate files for DB, models, CRUD).
- Updates to the database schema must be communicated to all members.
- Review the overall project progress regularly and adjust scope if needed.