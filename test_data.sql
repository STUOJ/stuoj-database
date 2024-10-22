USE stuoj_db;

-- DML

-- Insert test data into tbl_judgement
INSERT INTO tbl_judgement (submission_id, status, time, memory) VALUES
                                                                    (1, 1, 100, 256),
                                                                    (2, 0, 200, 512),
                                                                    (3, 1, 150, 128),
                                                                    (4, 0, 300, 1024),
                                                                    (5, 1, 250, 2048),
                                                                    (6, 0, 350, 4096),
                                                                    (7, 1, 400, 8192),
                                                                    (8, 0, 450, 16384),
                                                                    (9, 1, 500, 32768),
                                                                    (10, 0, 550, 65536);

-- Insert test data into tbl_language
INSERT INTO tbl_language (name) VALUES
                                    ('C++'),
                                    ('Java'),
                                    ('Python'),
                                    ('JavaScript'),
                                    ('Ruby'),
                                    ('Go'),
                                    ('Swift'),
                                    ('Kotlin'),
                                    ('PHP'),
                                    ('Rust');

-- Insert test data into tbl_problem
INSERT INTO tbl_problem (title, source, difficulty, time_limit, memory_limit, description, input, output, sample_input, sample_output, hint, create_time, update_time) VALUES
                                                                                                                                                                           ('两数之和', 'LeetCode', 2, 1, 128, '描述1', '输入1', '输出1', '样例输入1', '样例输出1', '提示1', '2023-01-01 10:00:00', '2023-01-01 10:00:00'),
                                                                                                                                                                           ('反转字符串', 'LeetCode', 1, 1, 128, '描述2', '输入2', '输出2', '样例输入2', '样例输出2', '提示2', '2023-01-02 11:00:00', '2023-01-02 11:00:00'),
                                                                                                                                                                           ('回文数', 'LeetCode', 1, 1, 128, '描述3', '输入3', '输出3', '样例输入3', '样例输出3', '提示3', '2023-01-03 12:00:00', '2023-01-03 12:00:00'),
                                                                                                                                                                           ('合并两个有序链表', 'LeetCode', 2, 1, 128, '描述4', '输入4', '输出4', '样例输入4', '样例输出4', '提示4', '2023-01-04 13:00:00', '2023-01-04 13:00:00'),
                                                                                                                                                                           ('有效的括号', 'LeetCode', 2, 1, 128, '描述5', '输入5', '输出5', '样例输入5', '样例输出5', '提示5', '2023-01-05 14:00:00', '2023-01-05 14:00:00'),
                                                                                                                                                                           ('最大子序和', 'LeetCode', 3, 1, 128, '描述6', '输入6', '输出6', '样例输入6', '样例输出6', '提示6', '2023-01-06 15:00:00', '2023-01-06 15:00:00'),
                                                                                                                                                                           ('爬楼梯', 'LeetCode', 1, 1, 128, '描述7', '输入7', '输出7', '样例输入7', '样例输出7', '提示7', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
                                                                                                                                                                           ('买卖股票的最佳时机', 'LeetCode', 2, 1, 128, '描述8', '输入8', '输出8', '样例输入8', '样例输出8', '提示8', '2023-01-08 17:00:00', '2023-01-08 17:00:00'),
                                                                                                                                                                           ('对称二叉树', 'LeetCode', 2, 1, 128, '描述9', '输入9', '输出9', '样例输入9', '样例输出9', '提示9', '2023-01-09 18:00:00', '2023-01-09 18:00:00'),
                                                                                                                                                                           ('二叉树的中序遍历', 'LeetCode', 2, 1, 128, '描述10', '输入10', '输出10', '样例输入10', '样例输出10', '提示10', '2023-01-10 19:00:00', '2023-01-10 19:00:00');

-- Insert test data into tbl_submission
INSERT INTO tbl_submission (user_id, problem_id, status, score, submit_time, language_id, length, memory, time, solution) VALUES
                                                                                                                              (1, 1, 1, 100, '2023-01-01 10:00:00', 1, 50, 256, 100, '题解1'),
                                                                                                                              (2, 2, 0, 90, '2023-01-02 11:00:00', 2, 60, 512, 200, '题解2'),
                                                                                                                              (3, 3, 1, 80, '2023-01-03 12:00:00', 3, 70, 128, 150, '题解3'),
                                                                                                                              (4, 4, 0, 70, '2023-01-04 13:00:00', 4, 80, 1024, 300, '题解4'),
                                                                                                                              (5, 5, 1, 60, '2023-01-05 14:00:00', 5, 90, 2048, 250, '题解5'),
                                                                                                                              (6, 6, 0, 50, '2023-01-06 15:00:00', 6, 100, 4096, 350, '题解6'),
                                                                                                                              (7, 7, 1, 40, '2023-01-07 16:00:00', 7, 110, 8192, 400, '题解7'),
                                                                                                                              (8, 8, 0, 30, '2023-01-08 17:00:00', 8, 120, 16384, 450, '题解8'),
                                                                                                                              (9, 9, 1, 20, '2023-01-09 18:00:00', 9, 130, 32768, 500, '题解9'),
                                                                                                                              (10, 10, 0, 10, '2023-01-10 19:00:00', 10, 140, 65536, 550, '题解10');

-- Insert test data into tbl_test_point
INSERT INTO tbl_test_point (problem_id, test_input, test_output) VALUES
                                                                     (1, '测试输入1', '测试输出1'),
                                                                     (2, '测试输入2', '测试输出2'),
                                                                     (3, '测试输入3', '测试输出3'),
                                                                     (4, '测试输入4', '测试输出4'),
                                                                     (5, '测试输入5', '测试输出5'),
                                                                     (6, '测试输入6', '测试输出6'),
                                                                     (7, '测试输���7', '测试输出7'),
                                                                     (8, '测试输入8', '测试输出8'),
                                                                     (9, '测试输入9', '测试输出9'),
                                                                     (10, '测试输入10', '测试输出10');

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
