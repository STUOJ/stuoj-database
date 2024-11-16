# stuoj-database

## 文件说明

- create_db.sql：创建数据库和表
- drop_db.sql：删除所有表并删除数据库
- clear_data.sql：清空所有数据，保留表结构
- test_data.sql：导入测试数据

## 表简述

| 表               | 表名                 | 简述                  |
|--------------------|----------------------|---------------------|
| 评测点表           | judgement            | 记录代码运行状态和评测结果的数据表   |
| 语言表             | language             | 存储编程语言信息的数据表        |
| 题目表             | problem              | 存储ACM-ICPC算法题目信息的数据表 |
| 题目历史记录表     | problem_history      | 记录题目修改历史的数据表        |
| 题目标签关系表     | problem_tag          | 存储题目与标签关系的数据表       |
| 题解表             | solution             | 存储题目标准答案的数据表        |
| 提交信息表         | submission           | 记录题目提交信息和代码的数据表     |
| 标签表             | tag                  | 存储题目分类标签的数据表        |
| 评测点数据表       | testcase             | 存储代码评测使用的输入和预期输出数据表 |
| 用户表             | user                 | 存储用户信息的数据表          |

## 类图

![image](https://github.com/user-attachments/assets/2cf737d3-2aa0-43f4-8b91-97619212c429)

![image](https://github.com/user-attachments/assets/a0fde827-d55c-4e2f-97e2-935fcc276456)
