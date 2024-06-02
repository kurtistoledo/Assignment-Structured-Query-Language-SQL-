-- Lesson 2: Structured Query Language (SQL)
-- 2. Managing a Fitness Center Database

-- Create the Members table
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

-- Create the WorkoutSessions table
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);
-- Insert data into the Members table
INSERT INTO Members (id, name, age) VALUES
(1, 'Jane Doe', 28),
(2, 'John Smith', 34),
(3, 'Alice Johnson', 30),
(4, 'Bob Brown', 45);

-- Insert data into the WorkoutSessions table
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(101, 1, '2024-06-01', '09:00 AM', 'Yoga'),
(102, 2, '2024-06-01', '07:00 AM', 'Cardio'),
(103, 3, '2024-06-01', '06:00 AM', 'Weightlifting'),
(104, 4, '2024-06-01', '08:00 AM', 'Swimming');

-- Update the workout session time for Jane Doe
UPDATE WorkoutSessions
SET session_time = '06:00 PM'
WHERE member_id = 1;

-- Remove John Smith's record from the Members table
DELETE FROM Members
WHERE name = 'John Smith';


