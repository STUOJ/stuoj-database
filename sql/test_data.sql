USE stuoj_db;

-- DML

-- Insert test data into tbl_judgement
INSERT INTO tbl_judgement (submission_id, test_point_id, time, memory, stdout, stderr, compile_output, message, status) VALUES
                                                                                                                            (1, 1, 0.5, 1024, 'Output 1', 'Error 1', 'Compile Output 1', 'Message 1', 1),
                                                                                                                            (2, 2, 0.6, 2048, 'Output 2', 'Error 2', 'Compile Output 2', 'Message 2', 2),
                                                                                                                            (3, 3, 0.7, 3072, 'Output 3', 'Error 3', 'Compile Output 3', 'Message 3', 3),
                                                                                                                            (4, 4, 0.8, 4096, 'Output 4', 'Error 4', 'Compile Output 4', 'Message 4', 4),
                                                                                                                            (5, 5, 0.9, 5120, 'Output 5', 'Error 5', 'Compile Output 5', 'Message 5', 5),
                                                                                                                            (6, 6, 1.0, 6144, 'Output 6', 'Error 6', 'Compile Output 6', 'Message 6', 6),
                                                                                                                            (7, 7, 1.1, 7168, 'Output 7', 'Error 7', 'Compile Output 7', 'Message 7', 7),
                                                                                                                            (8, 8, 1.2, 8192, 'Output 8', 'Error 8', 'Compile Output 8', 'Message 8', 8),
                                                                                                                            (9, 9, 1.3, 9216, 'Output 9', 'Error 9', 'Compile Output 9', 'Message 9', 9),
                                                                                                                            (10, 10, 1.4, 10240, 'Output 10', 'Error 10', 'Compile Output 10', 'Message 10', 10);

-- Insert test data into tbl_language
INSERT INTO tbl_language (name) VALUES
                                    ('Language 1'),
                                    ('Language 2'),
                                    ('Language 3'),
                                    ('Language 4'),
                                    ('Language 5'),
                                    ('Language 6'),
                                    ('Language 7'),
                                    ('Language 8'),
                                    ('Language 9'),
                                    ('Language 10');

-- Insert test data into tbl_problem
INSERT INTO tbl_problem (title, source, difficulty, time_limit, memory_limit, description, input, output, sample_input, sample_output, hint, status, create_time, update_time) VALUES
                                                                                                                                                                                   ('Problem 1', 'Source 1', 1, 1.0, 1024, 'Description 1', 'Input 1', 'Output 1', 'Sample Input 1', 'Sample Output 1', 'Hint 1', 1, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 2', 'Source 2', 2, 1.1, 2048, 'Description 2', 'Input 2', 'Output 2', 'Sample Input 2', 'Sample Output 2', 'Hint 2', 2, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 3', 'Source 3', 3, 1.2, 3072, 'Description 3', 'Input 3', 'Output 3', 'Sample Input 3', 'Sample Output 3', 'Hint 3', 3, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 4', 'Source 4', 4, 1.3, 4096, 'Description 4', 'Input 4', 'Output 4', 'Sample Input 4', 'Sample Output 4', 'Hint 4', 4, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 5', 'Source 5', 5, 1.4, 5120, 'Description 5', 'Input 5', 'Output 5', 'Sample Input 5', 'Sample Output 5', 'Hint 5', 5, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 6', 'Source 6', 6, 1.5, 6144, 'Description 6', 'Input 6', 'Output 6', 'Sample Input 6', 'Sample Output 6', 'Hint 6', 6, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 7', 'Source 7', 7, 1.6, 7168, 'Description 7', 'Input 7', 'Output 7', 'Sample Input 7', 'Sample Output 7', 'Hint 7', 7, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 8', 'Source 8', 8, 1.7, 8192, 'Description 8', 'Input 8', 'Output 8', 'Sample Input 8', 'Sample Output 8', 'Hint 8', 8, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 9', 'Source 9', 9, 1.8, 9216, 'Description 9', 'Input 9', 'Output 9', 'Sample Input 9', 'Sample Output 9', 'Hint 9', 9, NOW(), NOW()),
                                                                                                                                                                                   ('Problem 10', 'Source 10', 10, 1.9, 10240, 'Description 10', 'Input 10', 'Output 10', 'Sample Input 10', 'Sample Output 10', 'Hint 10', 10, NOW(), NOW());

-- Insert test data into tbl_submission
INSERT INTO tbl_submission (user_id, problem_id, status, score, submit_time, language_id, length, memory, time, source_code) VALUES
                                                                                                                                 (1, 1, 0, 10, NOW(), 1, 100, 1024, 0.5, 'Source Code 1'),
                                                                                                                                 (2, 2, 1, 20, NOW(), 2, 200, 2048, 0.6, 'Source Code 2'),
                                                                                                                                 (3, 3, 2, 30, NOW(), 3, 300, 3072, 0.7, 'Source Code 3'),
                                                                                                                                 (4, 4, 3, 40, NOW(), 4, 400, 4096, 0.8, 'Source Code 4'),
                                                                                                                                 (5, 5, 4, 50, NOW(), 5, 500, 5120, 0.9, 'Source Code 5'),
                                                                                                                                 (6, 6, 5, 60, NOW(), 6, 600, 6144, 1.0, 'Source Code 6'),
                                                                                                                                 (7, 7, 6, 70, NOW(), 7, 700, 7168, 1.1, 'Source Code 7'),
                                                                                                                                 (8, 8, 7, 80, NOW(), 8, 800, 8192, 1.2, 'Source Code 8'),
                                                                                                                                 (9, 9, 8, 90, NOW(), 9, 900, 9216, 1.3, 'Source Code 9'),
                                                                                                                                 (10, 10, 9, 100, NOW(), 10, 1000, 10240, 1.4, 'Source Code 10');

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
