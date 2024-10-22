USE stuoj_db;

-- DML

-- Insert test data into tbl_judgement
INSERT INTO tbl_judgement (submission_id, status, time, memory) VALUES
                                                                    (1, 0, 100, 256),
                                                                    (2, 1, 200, 512),
                                                                    (3, 0, 150, 128),
                                                                    (4, 1, 300, 1024),
                                                                    (5, 0, 250, 256),
                                                                    (6, 1, 350, 512),
                                                                    (7, 0, 400, 128),
                                                                    (8, 1, 450, 1024),
                                                                    (9, 0, 500, 256),
                                                                    (10, 1, 550, 512);

-- Insert test data into tbl_language
INSERT INTO tbl_language (name) VALUES
                                    ('C++'),
                                    ('Java'),
                                    ('Python'),
                                    ('JavaScript'),
                                    ('Ruby'),
                                    ('Go'),
                                    ('Rust'),
                                    ('Swift'),
                                    ('Kotlin'),
                                    ('PHP');

-- Insert test data into tbl_problem
INSERT INTO tbl_problem (title, source, difficulty, time_limit, memory_limit, description, input, output, sample_input, sample_output, hint) VALUES
                                                                                                                                                 ('Problem 1', 'Source 1', 1, 1, 128, 'Description 1', 'Input 1', 'Output 1', 'Sample Input 1', 'Sample Output 1', 'Hint 1'),
                                                                                                                                                 ('Problem 2', 'Source 2', 2, 2, 256, 'Description 2', 'Input 2', 'Output 2', 'Sample Input 2', 'Sample Output 2', 'Hint 2'),
                                                                                                                                                 ('Problem 3', 'Source 3', 3, 3, 512, 'Description 3', 'Input 3', 'Output 3', 'Sample Input 3', 'Sample Output 3', 'Hint 3'),
                                                                                                                                                 ('Problem 4', 'Source 4', 4, 4, 1024, 'Description 4', 'Input 4', 'Output 4', 'Sample Input 4', 'Sample Output 4', 'Hint 4'),
                                                                                                                                                 ('Problem 5', 'Source 5', 5, 5, 128, 'Description 5', 'Input 5', 'Output 5', 'Sample Input 5', 'Sample Output 5', 'Hint 5'),
                                                                                                                                                 ('Problem 6', 'Source 6', 6, 6, 256, 'Description 6', 'Input 6', 'Output 6', 'Sample Input 6', 'Sample Output 6', 'Hint 6'),
                                                                                                                                                 ('Problem 7', 'Source 7', 1, 7, 512, 'Description 7', 'Input 7', 'Output 7', 'Sample Input 7', 'Sample Output 7', 'Hint 7'),
                                                                                                                                                 ('Problem 8', 'Source 8', 2, 8, 1024, 'Description 8', 'Input 8', 'Output 8', 'Sample Input 8', 'Sample Output 8', 'Hint 8'),
                                                                                                                                                 ('Problem 9', 'Source 9', 3, 9, 128, 'Description 9', 'Input 9', 'Output 9', 'Sample Input 9', 'Sample Output 9', 'Hint 9'),
                                                                                                                                                 ('Problem 10', 'Source 10', 4, 10, 256, 'Description 10', 'Input 10', 'Output 10', 'Sample Input 10', 'Sample Output 10', 'Hint 10');

-- Insert test data into tbl_submission
INSERT INTO tbl_submission (user_id, problem_id, status, score, language_id, length, memory, time, source_code) VALUES
                                                                                                                 (1, 1, 0, 100, 1, 1000, 256, 100, 'Solution 1'),
                                                                                                                 (2, 2, 1, 90, 2, 2000, 512, 200, 'Solution 2'),
                                                                                                                 (3, 3, 0, 80, 3, 1500, 128, 150, 'Solution 3'),
                                                                                                                 (4, 4, 1, 70, 4, 3000, 1024, 300, 'Solution 4'),
                                                                                                                 (5, 5, 0, 60, 5, 2500, 256, 250, 'Solution 5'),
                                                                                                                 (6, 6, 1, 50, 6, 3500, 512, 350, 'Solution 6'),
                                                                                                                 (7, 7, 0, 40, 7, 4000, 128, 400, 'Solution 7'),
                                                                                                                 (8, 8, 1, 30, 8, 4500, 1024, 450, 'Solution 8'),
                                                                                                                 (9, 9, 0, 20, 9, 5000, 256, 500, 'Solution 9'),
                                                                                                                 (10, 10, 1, 10, 10, 5500, 512, 550, 'Solution 10');

-- Insert test data into tbl_test_point
INSERT INTO tbl_test_point (serial, problem_id, test_input, test_output) VALUES
                                                                                    (1, 1, 'Test Input 1', 'Test Output 1'),
                                                                                    (2, 2, 'Test Input 2', 'Test Output 2'),
                                                                                    (3, 3, 'Test Input 3', 'Test Output 3'),
                                                                                    (4, 4, 'Test Input 4', 'Test Output 4'),
                                                                                    (5, 5, 'Test Input 5', 'Test Output 5'),
                                                                                    (6, 6, 'Test Input 6', 'Test Output 6'),
                                                                                    (7, 7, 'Test Input 7', 'Test Output 7'),
                                                                                    (8, 8, 'Test Input 8', 'Test Output 8'),
                                                                                    (9, 9, 'Test Input 9', 'Test Output 9'),
                                                                                    (10, 10, 'Test Input 10', 'Test Output 10');

-- Insert test data into tbl_user
INSERT INTO tbl_user (username, password, role, email, avatar, create_time, update_time) VALUES
                                                                                             ('user1', 'pass123', 1, 'user1@example.com', 'http://example.com/avatar1.png', '2023-01-01 10:00:00', '2023-01-01 10:00:00'),
                                                                                             ('user2', 'pass456', 1, 'user2@example.com', 'http://example.com/avatar2.png', '2023-01-02 11:00:00', '2023-01-02 11:00:00'),
                                                                                             ('user3', 'pass789', 1, 'user3@example.com', 'http://example.com/avatar3.png', '2023-01-03 12:00:00', '2023-01-03 12:00:00'),
                                                                                             ('user4', 'pass101', 1, 'user4@example.com', 'http://example.com/avatar4.png', '2023-01-04 13:00:00', '2023-01-04 13:00:00'),
                                                                                             ('user5', 'pass102', 1, 'user5@example.com', 'http://example.com/avatar5.png', '2023-01-05 14:00:00', '2023-01-05 14:00:00'),
                                                                                             ('user6', 'pass103', 1, 'user6@example.com', 'http://example.com/avatar6.png', '2023-01-06 15:00:00', '2023-01-06 15:00:00'),
                                                                                             ('user7', 'pass104', 1, 'user7@example.com', 'http://example.com/avatar7.png', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
                                                                                             ('user8', 'pass105', 1, 'user8@example.com', 'http://example.com/avatar8.png', '2023-01-08 17:00:00', '2023-01-08 17:00:00'),
                                                                                             ('user9', 'pass106', 1, 'user9@example.com', 'http://example.com/avatar9.png', '2023-01-09 18:00:00', '2023-01-09 18:00:00'),
                                                                                             ('user10', 'pass107', 1, 'user10@example.com', 'http://example.com/avatar10.png', '2023-01-10 19:00:00', '2023-01-10 19:00:00');
