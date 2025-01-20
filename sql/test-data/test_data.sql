USE stuoj_db;

-- Insert data into tbl_judgement
INSERT INTO tbl_judgement (submission_id, testcase_id, time, memory, stdout, stderr, compile_output, message, status)
VALUES
(1, 1, 0.5, 1024, '输出1', '错误输出1', '编译输出1', '信息1', 1),
(2, 2, 0.6, 2048, '输出2', '错误输出2', '编译输出2', '信息2', 2),
(3, 3, 0.7, 3072, '输出3', '错误输出3', '编译输出3', '信息3', 3),
(4, 4, 0.8, 4096, '输出4', '错误输出4', '编译输出4', '信息4', 4),
(5, 5, 0.9, 5120, '输出5', '错误输出5', '编译输出5', '信息5', 5),
(6, 6, 1.0, 6144, '输出6', '错误输出6', '编译输出6', '信息6', 6),
(7, 7, 1.1, 7168, '输出7', '错误输出7', '编译输出7', '信息7', 7),
(8, 8, 1.2, 8192, '输出8', '错误输出8', '编译输出8', '信息8', 8),
(9, 9, 1.3, 9216, '输出9', '错误输出9', '编译输出9', '信息9', 9),
(10, 10, 1.4, 10240, '输出10', '错误输出10', '编译输出10', '信息10', 10);

-- Insert data into tbl_language
INSERT INTO tbl_language (name)
VALUES
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

-- Insert data into tbl_problem
INSERT INTO tbl_problem (title, source, difficulty, time_limit, memory_limit, description, input, output, sample_input, sample_output, hint, status)
VALUES
('两数之和', 'LeetCode', 1, 1.0, 131072, '给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那两个整数，并返回他们的数组下标。', '输入：nums = [2, 7, 11, 15], target = 9', '输出：[0, 1]', '2, 7, 11, 15', '0, 1', '使用哈希表', 1),
('反转链表', 'LeetCode', 2, 1.0, 131072, '反转一个单链表。', '输入：1->2->3->4->5->NULL', '输出：5->4->3->2->1->NULL', '1, 2, 3, 4, 5', '5, 4, 3, 2, 1', '迭代或递归', 1),
('合并两个有序链表', 'LeetCode', 2, 1.0, 131072, '将两个升序链表合并为一个新的升序链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。', '输入：1->2->4, 1->3->4', '输出：1->1->2->3->4->4', '1, 2, 4', '1, 1, 2, 3, 4, 4', '递归', 1),
('最长回文子串', 'LeetCode', 3, 1.0, 131072, '给你一个字符串 s，找到 s 中最长的回文子串。', '输入：babad', '输出：bab', 'babad', 'bab', '动态规划', 1),
('盛最多水的容器', 'LeetCode', 3, 1.0, 131072, '给定 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0) 。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。', '输入：[1,8,6,2,5,4,8,3,7]', '输出：49', '1, 8, 6, 2, 5, 4, 8, 3, 7', '49', '双指针', 1),
('三数之和', 'LeetCode', 2, 1.0, 131072, '给你一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有和为 0 且不重复的三元组。', '输入：nums = [-1, 0, 1, 2, -1, -4]', '输出：[[-1, 0, 1], [-1, -1, 2]]', '-1, 0, 1, 2, -1, -4', '[-1, 0, 1], [-1, -1, 2]', '排序+双指针', 1),
('电话号码的字母组合', 'LeetCode', 2, 1.0, 131072, '给定一个仅包含数字 2-9 的字符串，返回所有它能表示的字母组合。答案可以按任意顺序返回。', '输入：digits = "23"', '输出：["ad","ae","af","bd","be","bf","cd","ce","cf"]', '23', 'ad, ae, af, bd, be, bf, cd, ce, cf', '回溯', 1),
('删除链表的倒数第 N 个结点', 'LeetCode', 2, 1.0, 131072, '给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。', '输入：head = [1,2,3,4,5], n = 2', '输出：[1,2,3,5]', '1, 2, 3, 4, 5', '1, 2, 3, 5', '双指针', 1),
('有效的括号', 'LeetCode', 1, 1.0, 131072, '给定一个只包括 \'(\', \')\', \'{\', \'}\', \'[\', \']\' 的字符串 s ，判断字符串是否有效。', '输入：s = "()[]{}"', '输出：true', '()[]{}', 'true', '栈', 1),
('合并区间', 'LeetCode', 2, 1.0, 131072, '以数组 intervals 表示若干个区间的集合，其中单个区间为 intervals[i] = [starti, endi] 。请你合并所有重叠的区间，并返回一个不重叠的区间数组，该数组需恰好覆盖输入中的所有区间。', '输入：intervals = [[1,3],[2,6],[8,10],[15,18]]', '输出：[[1,6],[8,10],[15,18]]', '1, 3, 2, 6, 8, 10, 15, 18', '1, 6, 8, 10, 15, 18', '排序', 1);

-- Insert data into tbl_submission
INSERT INTO tbl_submission (user_id, problem_id, status, score, language_id, length, memory, time, source_code)
VALUES
(1, 1, 1, 100, 1, 200, 1024, 0.5, '源代码1'),
(2, 2, 2, 90, 2, 300, 2048, 0.6, '源代码2'),
(3, 3, 3, 80, 3, 400, 3072, 0.7, '源代码3'),
(4, 4, 4, 70, 4, 500, 4096, 0.8, '源代码4'),
(5, 5, 5, 60, 5, 600, 5120, 0.9, '源代码5'),
(6, 6, 6, 50, 6, 700, 6144, 1.0, '源代码6'),
(7, 7, 7, 40, 7, 800, 7168, 1.1, '源代码7'),
(8, 8, 8, 30, 8, 900, 8192, 1.2, '源代码8'),
(9, 9, 9, 20, 9, 1000, 9216, 1.3, '源代码9'),
(10, 10, 10, 10, 10, 1100, 10240, 1.4, '源代码10');

-- Insert data into tbl_testcase
INSERT INTO tbl_testcase (serial, problem_id, test_input, test_output)
VALUES
(1, 1, '测试输入1', '测试输出1'),
(2, 2, '测试输入2', '测试输出2'),
(3, 3, '测试输入3', '测试输出3'),
(4, 4, '测试输入4', '测试输出4'),
(5, 5, '测试输入5', '测试输出5'),
(6, 6, '测试输入6', '测试输出6'),
(7, 7, '测试输入7', '测试输出7'),
(8, 8, '测试输入8', '测试输出8'),
(9, 9, '测试输入9', '测试输出9'),
(10, 10, '测试输入10', '测试输出10');

-- Insert data into tbl_user
INSERT INTO tbl_user (username, password, role, email, avatar, signature)
VALUES
('user1', 'password1', 1, 'user1@example.com', 'http://example.com/avatar1.png', '个性签名1'),
('user2', 'password2', 1, 'user2@example.com', 'http://example.com/avatar2.png', '个性签名2'),
('user3', 'password3', 1, 'user3@example.com', 'http://example.com/avatar3.png', '个性签名3'),
('user4', 'password4', 1, 'user4@example.com', 'http://example.com/avatar4.png', '个性签名4'),
('user5', 'password5', 1, 'user5@example.com', 'http://example.com/avatar5.png', '个性签名5'),
('user6', 'password6', 1, 'user6@example.com', 'http://example.com/avatar6.png', '个性签名6'),
('user7', 'password7', 1, 'user7@example.com', 'http://example.com/avatar7.png', '个性签名7'),
('user8', 'password8', 1, 'user8@example.com', 'http://example.com/avatar8.png', '个性签名8'),
('user9', 'password9', 1, 'user9@example.com', 'http://example.com/avatar9.png', '个性签名9'),
('user10', 'password10', 1, 'user10@example.com', 'http://example.com/avatar10.png', '个性签名10');

-- Insert data into tbl_problem_history
INSERT INTO tbl_history (user_id, problem_id, title, source, difficulty, time_limit, memory_limit, description, input, output, sample_input, sample_output, hint, operation)
VALUES
(1, 1, '两数之和', 'LeetCode', 1, 1.0, 131072, '给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那两个整数，并返回他们的数组下标。', '输入：nums = [2, 7, 11, 15], target = 9', '输出：[0, 1]', '2, 7, 11, 15', '0, 1', '使用哈希表', 1),
(2, 2, '反转链表', 'LeetCode', 2, 1.0, 131072, '反转一个单链表。', '输入：1->2->3->4->5->NULL', '输出：5->4->3->2->1->NULL', '1, 2, 3, 4, 5', '5, 4, 3, 2, 1', '迭代或递归', 1),
(3, 3, '合并两个有序链表', 'LeetCode', 2, 1.0, 131072, '将两个升序链表合并为一个新的升序链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。', '输入：1->2->4, 1->3->4', '输出：1->1->2->3->4->4', '1, 2, 4', '1, 1, 2, 3, 4, 4', '递归', 1),
(4, 4, '最长回文子串', 'LeetCode', 3, 1.0, 131072, '给你一个字符串 s，找到 s 中最长的回文子串。', '输入：babad', '输出：bab', 'babad', 'bab', '动态规划', 1),
(5, 5, '盛最多水的容器', 'LeetCode', 3, 1.0, 131072, '给定 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0) 。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。', '输入：[1,8,6,2,5,4,8,3,7]', '输出：49', '1, 8, 6, 2, 5, 4, 8, 3, 7', '49', '双指针', 1),
(6, 6, '三数之和', 'LeetCode', 2, 1.0, 131072, '给你一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有和为 0 且不重复的三元组。', '输入：nums = [-1, 0, 1, 2, -1, -4]', '输出：[[-1, 0, 1], [-1, -1, 2]]', '-1, 0, 1, 2, -1, -4', '[-1, 0, 1], [-1, -1, 2]', '排序+双指针', 1),
(7, 7, '电话号码的字母组合', 'LeetCode', 2, 1.0, 131072, '给定一个仅包含数字 2-9 的字符串，返回所有它能表示的字母组合。答案可以按任意顺序返回。', '输入：digits = "23"', '输出：["ad","ae","af","bd","be","bf","cd","ce","cf"]', '23', 'ad, ae, af, bd, be, bf, cd, ce, cf', '回溯', 1),
(8, 8, '删除链表的倒数第 N 个结点', 'LeetCode', 2, 1.0, 131072, '给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。', '输入：head = [1,2,3,4,5], n = 2', '输出：[1,2,3,5]', '1, 2, 3, 4, 5', '1, 2, 3, 5', '双指针', 1),
(9, 9, '有效的括号', 'LeetCode', 1, 1.0, 131072, '给定一个只包括 \'(\', \')\', \'{\', \'}\', \'[\', \']\' 的字符串 s ，判断字符串是否有效。', '输入：s = "()[]{}"', '输出：true', '()[]{}', 'true', '栈', 1),
(10, 10, '合并区间', 'LeetCode', 2, 1.0, 131072, '以数组 intervals 表示若干个区间的集合，其中单个区间为 intervals[i] = [starti, endi] 。请你合并所有重叠的区间，并返回一个不重叠的区间数组，该数组需恰好覆盖输入中的所有区间。', '输入：intervals = [[1,3],[2,6],[8,10],[15,18]]', '输出：[[1,6],[8,10],[15,18]]', '1, 3, 2, 6, 8, 10, 15, 18', '1, 6, 8, 10, 15, 18', '排序', 1);

-- Insert data into tbl_tag
INSERT INTO tbl_tag (name)
VALUES
('数组'),
('链表'),
('字符串'),
('动态规划'),
('双指针'),
('排序'),
('回溯'),
('栈'),
('贪心'),
('图');

-- Insert data into tbl_problem_tag
INSERT INTO tbl_problem_tag (problem_id, tag_id)
VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 5),
(6, 1),
(7, 7),
(8, 2),
(9, 8),
(10, 6);

-- Insert data into tbl_solution
INSERT INTO tbl_solution (language_id, problem_id, source_code)
VALUES
(1, 1, 'public class Solution { public int[] twoSum(int[] nums, int target) { Map<Integer, Integer> map = new HashMap<>(); for (int i = 0; i < nums.length; i++) { int complement = target - nums[i]; if (map.containsKey(complement)) { return new int[] { map.get(complement), i }; } map.put(nums[i], i); } throw new IllegalArgumentException("No two sum solution"); } }'),
(2, 2, 'class ListNode: def __init__(self, val=0, next=None): self.val = val self.next = next class Solution: def reverseList(self, head: ListNode) -> ListNode: prev = None curr = head while curr: next_temp = curr.next curr.next = prev prev = curr curr = next_temp return prev'),
(3, 3, 'class ListNode: def __init__(self, val=0, next=None): self.val = val self.next = next class Solution: def mergeTwoLists(self, l1: ListNode, l2: ListNode) -> ListNode: if not l1 or not l2: return l1 or l2 if l1.val < l2.val: l1.next = self.mergeTwoLists(l1.next, l2) return l1 else: l2.next = self.mergeTwoLists(l1, l2.next) return l2'),
(4, 4, 'class Solution: def longestPalindrome(self, s: str) -> str: res = "" for i in range(len(s)): odd = self.helper(s, i, i) even = self.helper(s, i, i + 1) res = max(res, odd, even, key=len) return res def helper(self, s, l, r): while l >= 0 and r < len(s) and s[l] == s[r]: l -= 1 r += 1 return s[l + 1:r]'),
(5, 5, 'class Solution: def maxArea(self, height: List[int]) -> int: l, r = 0, len(height) - 1 max_area = 0 while l < r: max_area = max(max_area, min(height[l], height[r]) * (r - l)) if height[l] < height[r]: l += 1 else: r -= 1 return max_area'),
(6, 6, 'class Solution: def threeSum(self, nums: List[int]) -> List[List[int]]: res = [] nums.sort() for i in range(len(nums)): if i > 0 and nums[i] == nums[i - 1]: continue l, r = i + 1, len(nums) - 1 while l < r: s = nums[i] + nums[l] + nums[r] if s < 0: l += 1 elif s > 0: r -= 1 else: res.append((nums[i], nums[l], nums[r])) while l < r and nums[l] == nums[l + 1]: l += 1 while l < r and nums[r] == nums[r - 1]: r -= 1 l += 1 r -= 1 return res'),
(7, 7, 'class Solution: def letterCombinations(self, digits: str) -> List[str]: if not digits: return [] res = [""] digit_to_char = {"2": "abc", "3": "def", "4": "ghi", "5": "jkl", "6": "mno", "7": "pqrs", "8": "tuv", "9": "wxyz"} for digit in digits: res = [prefix + char for prefix in res for char in digit_to_char[digit]] return res'),
(8, 8, 'class ListNode: def __init__(self, val=0, next=None): self.val = val self.next = next class Solution: def removeNthFromEnd(self, head: ListNode, n: int) -> ListNode: dummy = ListNode(0) dummy.next = head first = second = dummy for _ in range(n + 1): first = first.next while first: first = first.next second = second.next second.next = second.next.next return dummy.next'),
(9, 9, 'class Solution: def isValid(self, s: str) -> bool: stack = [] mapping = {")": "(", "}": "{", "]": "["} for char in s: if char in mapping: top_element = stack.pop() if stack else "#" if mapping[char] != top_element: return False else: stack.append(char) return not stack'),
(10, 10, 'class Solution: def merge(self, intervals: List[List[int]]) -> List[List[int]]: intervals.sort(key=lambda x: x[0]) merged = [] for interval in intervals: if not merged or merged[-1][1] < interval[0]: merged.append(interval) else: merged[-1][1] = max(merged[-1][1], interval[1]) return merged');

-- Insert data into tbl_blog
INSERT INTO tbl_blog (user_id, problem_id, title, content, status, create_time, update_time) VALUES
(1, 0, '博客标题1', '这是博客内容1。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 1, '博客标题2', '这是博客内容2。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 2, '博客标题3', '这是博客内容3。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, 3, '博客标题4', '这是博客内容4。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, 4, '博客标题5', '这是博客内容5。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, 5, '博客标题6', '这是博客内容6。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, 6, '博客标题7', '这是博客内容7。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(8, 7, '博客标题8', '这是博客内容8。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(9, 8, '博客标题9', '这是博客内容9。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(10, 9, '博客标题10', '这是博客内容10。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert data into tbl_comment
INSERT INTO tbl_comment (user_id, blog_id, content, status, create_time, update_time) VALUES
(1, 1, '这是评论内容1。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 2, '这是评论内容2。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 3, '这是评论内容3。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, 4, '这是评论内容4。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, 5, '这是评论内容5。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, 6, '这是评论内容6。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, 7, '这是评论内容7。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(8, 8, '这是评论内容8。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(9, 9, '这是评论内容9。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(10, 10, '这是评论内容10。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert data into tbl_collection
INSERT INTO tbl_collection (user_id, title, description, status, create_time, update_time) VALUES
(1, '题单标题1', '这是题单简介1。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, '题单标题2', '这是题单简介2。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, '题单标题3', '这是题单简介3。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, '题单标题4', '这是题单简介4。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, '题单标题5', '这是题单简介5。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, '题单标题6', '这是题单简介6。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, '题单标题7', '这是题单简介7。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(8, '题单标题8', '这是题单简介8。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(9, '题单标题9', '这是题单简介9。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(10, '题单标题10', '这是题单简介10。', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert data into tbl_collection_problem
INSERT INTO tbl_collection_problem (collection_id, problem_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Insert data into tbl_collection_user
INSERT INTO tbl_collection_user (collection_id, user_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);