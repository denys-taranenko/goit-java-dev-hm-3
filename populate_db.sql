INSERT INTO worker (name, birthday, level, salary)
VALUES
('John Smith', '1990-01-01', 'Trainee', 800),
('Mary Johnson', '1985-02-15', 'Junior', 1500),
('David Lee', '1980-05-20', 'Middle', 3000),
('Emily Wang', '1975-08-30', 'Senior', 7000),
('Michael Chen', '1995-12-10', 'Trainee', 900),
('Jennifer Kim', '1992-03-05', 'Junior', 1800),
('Chris Davis', '1988-06-25', 'Middle', 3500),
('Samantha Brown', '1983-09-17', 'Senior', 8000),
('Daniel Lee', '1993-11-30', 'Trainee', 1000),
('Jessica Park', '1991-04-20', 'Junior', 2000);

INSERT INTO client (NAME) VALUES
('ABC Corp.'),
('XYZ Inc.'),
('Acme Corporation'),
('Globex Industries'),
('Initech');

INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE)
VALUES
(1, '2022-01-01', '2022-05-01'),
(2, '2022-02-01', '2022-08-01'),
(3, '2022-03-01', '2023-03-01'),
(4, '2022-04-01', '2023-01-01'),
(5, '2022-05-01', '2022-06-01'),
(1, '2022-06-01', '2022-10-01'),
(2, '2022-07-01', '2023-01-01'),
(3, '2022-08-01', '2023-02-01'),
(4, '2022-09-01', '2023-06-01'),
(5, '2022-10-01', '2022-11-01');

INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 1),
(4, 3),
(4, 5),
(5, 2),
(5, 4),
(5, 6),
(6, 7),
(6, 8),
(6, 9),
(7, 2),
(7, 4),
(7, 6),
(8, 1),
(8, 3),
(8, 5),
(9, 2),
(9, 4),
(9, 6),
(10, 1),
(10, 3),
(10, 5);