-- ==========================================
-- Student Course Management Database
-- ==========================================
CREATE DATABASE IF NOT EXISTS student_manager;
USE student_manager;

-- 1. Courses Table
CREATE TABLE IF NOT EXISTS courses (
    course_id   INT PRIMARY KEY AUTO_INCREMENT,
    course_code VARCHAR(10)  NOT NULL UNIQUE,
    course_name VARCHAR(100) NOT NULL,
    credits     INT          NOT NULL CHECK (credits > 0),
    department  VARCHAR(50)
);

-- 2. Students Table
CREATE TABLE IF NOT EXISTS students (
    student_id    INT PRIMARY KEY AUTO_INCREMENT,
    first_name    VARCHAR(50)  NOT NULL,
    middle_name   VARCHAR(50),                 -- Optional
    last_name     VARCHAR(50)  NOT NULL,
    email         VARCHAR(100) NOT NULL UNIQUE,
    phone         VARCHAR(20),
    date_of_birth DATE         NOT NULL
);

-- 3. Enrollments Table (Connects Students and Courses)
CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id    INT NOT NULL,
    course_id     INT NOT NULL,
    enroll_date   DATE NOT NULL DEFAULT (CURRENT_DATE),
    grade         VARCHAR(5) DEFAULT 'N/A',      -- e.g., 'A', 'B+', 'N/A'
    status        VARCHAR(20) DEFAULT 'Active',  -- 'Active', 'Completed', 'Dropped'
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE,
    UNIQUE (student_id, course_id)               -- Prevent a student from enrolling in the same course twice
);

-- 4. Instructors Table
CREATE TABLE IF NOT EXISTS instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name    VARCHAR(50) NOT NULL,
    last_name     VARCHAR(50) NOT NULL,
    email         VARCHAR(100) NOT NULL UNIQUE,
    department    VARCHAR(50)
);

-- 5. Course Assignments Table (Which instructor teaches which course)
CREATE TABLE IF NOT EXISTS course_assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id     INT NOT NULL,
    instructor_id INT NOT NULL,
    semester      VARCHAR(20) NOT NULL,          -- e.g., 'Fall 2026'
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id) ON DELETE CASCADE
);


-- ==========================================
-- SEED DATA (Sample Data)
-- ==========================================

-- Insert Courses
INSERT INTO courses (course_code, course_name, credits, department) VALUES
('CS101', 'Introduction to Programming', 5, 'Computer Science'),
('DB201', 'Database Management', 5, 'Computer Science'),
('SD301', 'Software Development', 10, 'Software Engineering'),
('MATH101', 'Calculus I', 4, 'Mathematics'),
('ENG105', 'Academic Writing', 3, 'English');

-- Insert Students
INSERT INTO students (first_name, middle_name, last_name, email, phone, date_of_birth) VALUES
('Ram', NULL, 'Sharma', 'ram.sharma@email.com', '984-1234567', '2002-05-15'),
('Sita', 'K', 'Thapa', 'sita.thapa@email.com', '985-2345678', '2001-08-20'),
('Hari', NULL, 'Gurung', 'hari.gurung@email.com', '986-3456789', '2003-01-10'),
('Gita', 'R', 'Karki', 'gita.karki@email.com', '980-4567890', '2000-11-05'),
('Bishal', NULL, 'Shrestha', 'bishal.s@email.com', '981-5678901', '2002-03-12');

-- Insert Instructors
INSERT INTO instructors (first_name, last_name, email, department) VALUES
('John', 'Doe', 'john.doe@university.edu', 'Computer Science'),
('Jane', 'Smith', 'jane.smith@university.edu', 'Mathematics'),
('Robert', 'Brown', 'robert.b@university.edu', 'English');

-- Insert Enrollments (Linking Students to Courses)
INSERT INTO enrollments (student_id, course_id, enroll_date, grade, status) VALUES
(1, 1, '2026-01-10', 'A', 'Completed'),
(1, 2, '2026-01-10', 'A-', 'Completed'),
(2, 1, '2026-01-12', 'B+', 'Completed'),
(3, 3, '2026-01-15', 'N/A', 'Active'),
(4, 4, '2026-01-18', 'N/A', 'Active'),
(5, 5, '2026-01-20', 'N/A', 'Dropped');

-- Insert Course Assignments (Linking Courses to Instructors)
INSERT INTO course_assignments (course_id, instructor_id, semester) VALUES
(1, 1, 'Spring 2026'),
(2, 1, 'Spring 2026'),
(3, 1, 'Spring 2026'),
(4, 2, 'Spring 2026'),
(5, 3, 'Spring 2026');


-- ==========================================
-- VERIFY DATA (Check the data)
-- ==========================================
SELECT * FROM student_manager.courses;
SELECT * FROM student_manager.students;
SELECT * FROM student_manager.enrollments;
SELECT * FROM student_manager.instructors;
SELECT * FROM student_manager.course_assignments;