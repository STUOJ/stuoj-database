USE stuoj_db;

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

-- 插入测试数据到 tbl_language
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

INSERT INTO tbl_question (title, source, difficulty, create_time, update_time) VALUES
('两数之和', 'LeetCode', 2, '2023-01-01 10:00:00', '2023-01-01 10:00:00'),
('反转字符串', 'LeetCode', 1, '2023-01-02 11:00:00', '2023-01-02 11:00:00'),
('回文数', 'LeetCode', 1, '2023-01-03 12:00:00', '2023-01-03 12:00:00'),
('合并两个有序链表', 'LeetCode', 2, '2023-01-04 13:00:00', '2023-01-04 13:00:00'),
('有效的括号', 'LeetCode', 2, '2023-01-05 14:00:00', '2023-01-05 14:00:00'),
('最大子序和', 'LeetCode', 3, '2023-01-06 15:00:00', '2023-01-06 15:00:00'),
('爬楼梯', 'LeetCode', 1, '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
('买卖股票的最佳时机', 'LeetCode', 2, '2023-01-08 17:00:00', '2023-01-08 17:00:00'),
('对称二叉树', 'LeetCode', 2, '2023-01-09 18:00:00', '2023-01-09 18:00:00'),
('二叉树的中序遍历', 'LeetCode', 2, '2023-01-10 19:00:00', '2023-01-10 19:00:00');

INSERT INTO tbl_submission (user_id, question_id, status, score, submit_time, language_id, length, memory, time) VALUES
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

INSERT INTO tbl_user (username, password, `group`, email, avatar, create_time, update_time) VALUES
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