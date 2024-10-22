USE stuoj_db;

-- DML
USE stuoj_db;

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
INSERT INTO tbl_problem (title, source, difficulty, time_limit, memory_limit, input, output, sample_input, sample_output, hint, create_time, update_time) VALUES
                                                                                                                                                              ('两数之和', 'LeetCode', 2, 1, 128, '输入两个整数', '输出它们的和', '1 2', '3', '无', '2023-01-01 10:00:00', '2023-01-01 10:00:00'),
                                                                                                                                                              ('反转字符串', 'LeetCode', 1, 1, 128, '输入一个字符串', '输出反转后的字符串', 'hello', 'olleh', '无', '2023-01-02 11:00:00', '2023-01-02 11:00:00'),
                                                                                                                                                              ('回文数', 'LeetCode', 1, 1, 128, '输入一个整数', '判断是否为回文数', '121', 'true', '无', '2023-01-03 12:00:00', '2023-01-03 12:00:00'),
                                                                                                                                                              ('合并两个有序链表', 'LeetCode', 2, 1, 128, '输入两个有序链表', '输出合并后的有序链表', '1->2->4, 1->3->4', '1->1->2->3->4->4', '无', '2023-01-04 13:00:00', '2023-01-04 13:00:00'),
                                                                                                                                                              ('有效的括号', 'LeetCode', 2, 1, 128, '输入一个包含括号的字符串', '判断括号是否有效', '()[]{}', 'true', '无', '2023-01-05 14:00:00', '2023-01-05 14:00:00'),
                                                                                                                                                              ('最大子序和', 'LeetCode', 3, 1, 128, '输入一个整数数组', '输出最大子序和', '-2,1,-3,4,-1,2,1,-5,4', '6', '无', '2023-01-06 15:00:00', '2023-01-06 15:00:00'),
                                                                                                                                                              ('爬楼梯', 'LeetCode', 1, 1, 128, '输入一个整数n', '输出爬到第n阶的方法数', '2', '2', '无', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
                                                                                                                                                              ('买卖股票的最佳时机', 'LeetCode', 2, 1, 128, '输入一个数组', '输出最大利润', '7,1,5,3,6,4', '5', '无', '2023-01-08 17:00:00', '2023-01-08 17:00:00'),
                                                                                                                                                              ('对称二叉树', 'LeetCode', 2, 1, 128, '输入一个二叉树', '判断是否对称', '1,2,2,3,4,4,3', 'true', '无', '2023-01-09 18:00:00', '2023-01-09 18:00:00'),
                                                                                                                                                              ('二叉树的中序遍历', 'LeetCode', 2, 1, 128, '输入一个二叉树', '输出中序遍历结果', '1,null,2,3', '1,3,2', '无', '2023-01-10 19:00:00', '2023-01-10 19:00:00');

-- Insert test data into tbl_submission
INSERT INTO tbl_submission (user_id, problem_id, status, score, submit_time, language_id, length, memory, time) VALUES
                                                                                                                    (1, 1, 1, 100, '2023-01-01 10:00:00', 1, 50, 256, 100),
                                                                                                                    (2, 2, 0, 90, '2023-01-02 11:00:00', 2, 60, 512, 200),
                                                                                                                    (3, 3, 1, 80, '2023-01-03 12:00:00', 3, 70, 128, 150),
                                                                                                                    (4, 4, 0, 70, '2023-01-04 13:00:00', 4, 80, 1024, 300),
                                                                                                                    (5, 5, 1, 60, '2023-01-05 14:00:00', 5, 90, 2048, 250),
                                                                                                                    (6, 6, 0, 50, '2023-01-06 15:00:00', 6, 100, 4096, 350),
                                                                                                                    (7, 7, 1, 40, '2023-01-07 16:00:00', 7, 110, 8192, 400),
                                                                                                                    (8, 8, 0, 30, '2023-01-08 17:00:00', 8, 120, 16384, 450),
                                                                                                                    (9, 9, 1, 20, '2023-01-09 18:00:00', 9, 130, 32768, 500),
                                                                                                                    (10, 10, 0, 10, '2023-01-10 19:00:00', 10, 140, 65536, 550);

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
