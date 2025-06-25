USE SkillSwapDB;

-- Insert Users (with and without some optional values)
INSERT INTO Users (name, email, password, role)
VALUES 
('Ravi Kumar', 'ravi@gmail.com', 'pass123', 'learner'),
('Anjali Singh', 'anjali@gmail.com', 'pass456', 'educator'),
('Admin User', 'admin@skillswap.com', 'adminpass', 'admin');

-- Insert Skills
INSERT INTO Skills (skill_name)
VALUES 
('Python'), ('Web Development'), ('Singing');

-- Insert UserSkills (partial values, using interest)
INSERT INTO UserSkills (user_id, skill_id, interest)
VALUES 
(1, 1, 'learn'),
(2, 2, 'teach'),
(2, 3, 'teach');

-- Insert Courses
INSERT INTO Courses (title, description, educator_id, price)
VALUES 
('Learn Python Basics', 'Beginner level Python course', 2, 499.00),
('Master Web Dev', NULL, 2, 599.00);  -- NULL description

-- Insert Lectures
INSERT INTO Lectures (course_id, title, video_url)
VALUES 
(1, 'Intro to Python', 'https://video.com/python1'),
(1, 'Variables in Python', 'https://video.com/python2');

-- Insert Enrollments
INSERT INTO Enrollments (user_id, course_id)
VALUES 
(1, 1);

SELECT * FROM Courses;

-- Update course price
UPDATE Courses
SET price = 450.00
WHERE course_id = 1;

-- Add description where it was NULL
UPDATE Courses
SET description = 'Advanced fullstack course'
WHERE course_id = 2;

-- Delete an enrollment
DELETE FROM Enrollments
WHERE enrollment_id = 1;

-- Delete a course with a specific course_id
DELETE FROM Courses
WHERE course_id = 2; 

-- Find courses with no description
SELECT * FROM Courses
WHERE description IS NULL;






