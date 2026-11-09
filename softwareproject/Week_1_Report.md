# Software Development – Week 1 Progress Report

**Group Members:**
1. Sobita Khadka
2. Milan Thapa

**Week:** Week 1  
**Topic:** Project Introduction, Requirements Analysis and Planning

---

## 1. Introduction
During Week 1, our group started planning the Student Course Manager project. The main purpose was to understand the project requirements, identify the core features, review the database design, and divide responsibilities among the group members.

We discussed how the application would manage students and courses using Python, MySQL, and Streamlit.

## 2. Project Overview
The Student Course Manager is a Python-based application designed to manage student records and their course enrollments.

The system aims to provide the following features:
- Manage student information.
- Add, view, update, and delete students.
- Search students by name or email.
- Assign students to specific courses.
- Display student details along with course information.

## 3. Project Requirements

### Functional Requirements
1. Add new students to the database with validation.
2. Display all available students.
3. Update existing student information.
4. Delete students from the database.
5. Search students by name or email.
6. Fetch and display course lists.
7. Assign a course to a student.

### Non-Functional Requirements
- The application should be simple and user-friendly.
- Database operations should work correctly and securely.
- The system should provide accurate validation error messages.
- The code should be modular and easy to maintain.

## 4. Database Review
Our group reviewed the planned MySQL database, `student_manager`.

| Table | Purpose |
|---|---|
| `courses` | Stores course details (ID, code, name, credits) |
| `students` | Stores student details and links to the course via Foreign Key |

We discussed the relationships between the tables (`ON DELETE SET NULL`) and how they will support the application features.

## 5. Technologies and Tools
| Technology / Tool | Purpose |
|---|---|
| Python | Backend programming |
| MySQL | Database management |
| Streamlit | User interface |
| mysql-connector-python | Connecting Python with MySQL |
| GitHub | Code sharing and version control |
| pytest | Automated testing |
| VS Code | Development environment |

## 6. Division of Team Responsibilities
- **[Sobita Khadka] – Database Management:** Maintain the DB, handle schema, and constraints And Testing and Documentation: Maintain GitHub, write tests, and update README.
- **[Milan Thapa] – Student Module and Backend:** Develop Python DB logic, validation, and Streamlit UI And Course Module: Handle course data, dropdowns, and relationships.


## 7. Project Planning and Milestones
| Week | Planned Activities |
|---|---|
| Week 1 | Project introduction, requirements, and planning |
| Week 2 | Python and MySQL database practice |
| Week 3 | Database integration and Streamlit UI |
| Week 4 | Student module development |
| Week 5 | Feature completion and integration |
| Week 6 | Testing and error handling |
| Week 7 | Documentation and improvements |
| Week 8 | Final testing and presentation |

## 8. Problems and Challenges
- Understanding how to manage dates in Streamlit forms.
- Reviewing the existing database structure and foreign key rules.
- Planning how the UI would connect with the backend modules.

## 9. Learning Outcomes
By the end of Week 1, our group:
- Understood the main purpose of the Student Course Manager.
- Identified the functional and non-functional requirements.
- Reviewed the planned MySQL database and its tables.
- Divided responsibilities among all group members.
- Prepared an initial development plan.

## 10. Conclusion
Week 1 focused on planning the Student Course Manager. The group identified requirements, reviewed the database, selected development tools, and divided responsibilities. This provided a solid foundation for Week 2.