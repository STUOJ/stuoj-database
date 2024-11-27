# stuoj-database

## 文件说明

- create_db.sql：创建数据库和表
- drop_db.sql：删除所有表并删除数据库
- clear_data.sql：清空所有数据，保留表结构
- test_data.sql：导入测试数据

## 表说明

| 表       | 表名              | 简述                   |
|---------|-----------------|----------------------|
| 评测点表    | judgement       | 记录代码运行状态和评测结果的数据表    |
| 语言表     | language        | 存储编程语言信息的数据表         |
| 题目表     | problem         | 存储ACM-ICPC算法题目信息的数据表 |
| 题目历史记录表 | problem_history | 记录题目修改历史的数据表         |
| 题目标签关系表 | problem_tag     | 存储题目与标签关系的数据表        |
| 题解表     | solution        | 存储题目标准答案的数据表         |
| 提交信息表   | submission      | 记录题目提交信息和代码的数据表      |
| 标签表     | tag             | 存储题目分类标签的数据表         |
| 评测点数据表  | testcase        | 存储代码评测使用的输入和预期输出数据表  |
| 用户表     | user            | 存储用户信息的数据表           |

## UML

### 类图

![image](https://github.com/user-attachments/assets/ca2b0a98-fee1-4e0f-bd97-499679be01fc)

![image](https://github.com/user-attachments/assets/d5db2957-8446-4081-9462-fb7f31c31a2f)

## 字段说明

### tbl_judgement

| 字段     | 字段名            | 数据类型           | 默认值            | 解释              |
|--------|----------------|----------------|----------------|-----------------|
| 评测点ID  | id             | int unsigned   | auto_increment | 评测点的唯一标识        |
| 提交记录ID | submission_id  | int unsigned   | 0              | 关联提交记录的ID       |
| 评测点ID  | testcase_id    | int unsigned   | 0              | 关联评测点的ID        |
| 运行耗时   | time           | float unsigned | 0              | 代码运行的时间消耗，单位为秒  |
| 内存     | memory         | int unsigned   | 0              | 代码运行所需的内存，单位为KB |
| 标准输出   | stdout         | longtext       | no default     | 运行后的标准输出结果      |
| 标准错误输出 | stderr         | longtext       | no default     | 运行后的标准错误信息      |
| 编译输出   | compile_output | longtext       | no default     | 代码编译时的输出信息      |
| 信息     | message        | longtext       | no default     | 运行或编译的附加信息      |
| 提交状态   | status         | int unsigned   | 0              | 该评测点的代码评测状态     |

### tbl_language

| 字段   | 字段名  | 数据类型         | 默认值            | 解释      |
|------|------|--------------|----------------|---------|
| 语言ID | id   | int unsigned | auto_increment | 语言的唯一标识 |
| 语言名  | name | varchar(255) | no default     | 编程语言的名称 |

### tbl_problem

| 字段   | 字段名           | 数据类型           | 默认值               | 解释                     |
|------|---------------|----------------|-------------------|------------------------|
| 题目ID | id            | int unsigned   | auto_increment    | 题目的唯一标识                |
| 标题   | title         | text           | no default        | 题目的标题                  |
| 题目来源 | source        | text           | no default        | 题目的来源信息，例如出题人或来源平台     |
| 难度   | difficulty    | int unsigned   | 0                 | 题目的难度等级                |
| 时间限制 | time_limit    | float unsigned | 1                 | 题目的时间限制，单位为秒           |
| 内存限制 | memory_limit  | int unsigned   | 131072            | 题目的内存限制，单位为KB          |
| 题面   | description   | longtext       | no default        | 题目的详细描述，包括背景、问题定义等信息   |
| 输入说明 | input         | longtext       | no default        | 题目对输入的详细要求说明           |
| 输出说明 | output        | longtext       | no default        | 题目对输出的详细要求说明           |
| 输入样例 | sample_input  | longtext       | no default        | 题目中提供的输入示例，用于说明输入格式    |
| 输出样例 | sample_output | longtext       | no default        | 题目中提供的输出示例，用于说明输出格式    |
| 提示   | hint          | longtext       | no default        | 出题人提供的解题提示，帮助用户更好地理解题目 |
| 状态   | status        | int unsigned   | 1                 | 题目是否可见的状态              |
| 创建时间 | create_time   | timestamp      | CURRENT_TIMESTAMP | 记录创建的时间                |
| 更新时间 | update_time   | timestamp      | CURRENT_TIMESTAMP | 记录上次更新的时间              |

### tbl_problem_history

| 字段   | 字段名           | 数据类型           | 默认值               | 解释                     |
|------|---------------|----------------|-------------------|------------------------|
| 记录ID | id            | int unsigned   | auto_increment    | 历史记录的唯一标识符             |
| 用户ID | user_id       | int            | 0                 | 记录操作该题目的用户ID           |
| 题目ID | problem_id    | int unsigned   | 0                 | 与操作记录相关的题目的ID          |
| 标题   | title         | text           | no default        | 题目的标题                  |
| 题目来源 | source        | text           | no default        | 题目的来源信息，例如出题人或来源平台     |
| 难度   | difficulty    | int unsigned   | 0                 | 题目的难度等级                |
| 时间限制 | time_limit    | float unsigned | 1                 | 题目的时间限制，单位为秒           |
| 内存限制 | memory_limit  | int unsigned   | 131072            | 题目的内存限制，单位为KB          |
| 题面   | description   | longtext       | no default        | 题目的详细描述，包括背景、问题定义等信息   |
| 输入说明 | input         | longtext       | no default        | 题目对输入的详细要求说明           |
| 输出说明 | output        | longtext       | no default        | 题目对输出的详细要求说明           |
| 输入样例 | sample_input  | longtext       | no default        | 题目中提供的输入示例，用于说明输入格式    |
| 输出样例 | sample_output | longtext       | no default        | 题目中提供的输出示例，用于说明输出格式    |
| 提示   | hint          | longtext       | no default        | 出题人提供的解题提示，帮助用户更好地理解题目 |
| 操作   | operation     | int unsigned   | 0                 | 用户对题目的操作类型             |
| 创建时间 | create_time   | timestamp      | CURRENT_TIMESTAMP | 记录操作发生的时间              |

### tbl_problem_tag

| 字段   | 字段名        | 数据类型         | 默认值 | 解释          |
|------|------------|--------------|-----|-------------|
| 题目ID | problem_id | int unsigned | 0   | 与标签关联的题目的ID |
| 标签ID | tag_id     | int unsigned | 0   | 与题目关联的标签的ID |

### tbl_solution

| 字段   | 字段名         | 数据类型         | 默认值            | 解释            |
|------|-------------|--------------|----------------|---------------|
| 题解ID | id          | int unsigned | auto_increment | 题解的唯一标识符      |
| 语言ID | language_id | int unsigned | 0              | 题解所使用的编程语言的ID |
| 题目ID | problem_id  | int unsigned | 0              | 对应题目的ID       |
| 源代码  | source_code | longtext     | no default     | 题解的源代码        |

### tbl_submission

| 字段     | 字段名         | 数据类型           | 默认值               | 解释             |
|--------|-------------|----------------|-------------------|----------------|
| 提交记录ID | id          | int unsigned   | auto_increment    | 提交记录的唯一标识      |
| 用户ID   | user_id     | int unsigned   | 0                 | 提交用户的ID        |
| 题目ID   | problem_id  | int unsigned   | 0                 | 关联题目的ID        |
| 提交状态   | status      | int unsigned   | 0                 | 提交的评测状态        |
| 分数     | score       | int unsigned   | 0                 | 该次提交的得分        |
| 语言ID   | language_id | int unsigned   | 0                 | 使用语言的ID        |
| 源代码长度  | length      | int unsigned   | 0                 | 提交源代码的字符数      |
| 内存     | memory      | int unsigned   | 0                 | 运行时占用的内存，单位为KB |
| 运行耗时   | time        | float unsigned | 0                 | 运行耗时，单位为秒      |
| 源代码    | source_code | longtext       | no default        | 提交的源代码内容       |
| 创建时间   | create_time | timestamp      | CURRENT_TIMESTAMP | 提交记录的创建时间      |
| 更新时间   | update_time | timestamp      | CURRENT_TIMESTAMP | 提交记录的更新时间      |

### tbl_tag

| 字段   | 字段名  | 数据类型         | 默认值            | 解释                       |
|------|------|--------------|----------------|--------------------------|
| 标签ID | id   | int unsigned | auto_increment | 标签的唯一标识符                 |
| 标签名  | name | varchar(255) | no default     | 标签的名称，例如 “动态规划”等，用于对题目分类 |

### tbl_testcase

| 字段    | 字段名         | 数据类型         | 默认值            | 解释        |
|-------|-------------|--------------|----------------|-----------|
| 评测点ID | id          | int unsigned | auto_increment | 评测点的唯一标识符 |
| 评测点序号 | serial      | int unsigned | 0              | 评测点的顺序编号  |
| 题目ID  | problem_id  | int unsigned | 0              | 关联题目的ID   |
| 测试输入  | test_input  | longtext     | no default     | 用于评测的输入数据 |
| 测试输出  | test_output | longtext     | no default     | 预期的输出数据   |

### tbl_user

| 字段    | 字段名         | 数据类型         | 默认值               | 解释                           |
|-------|-------------|--------------|-------------------|------------------------------|
| 用户ID  | id          | int unsigned | auto_increment    | 用户的唯一标识符                     |
| 用户名   | username    | varchar(255) | no default        | 用户的名称                        |
| 密码    | password    | varchar(255) | 123456            | 用户的密码，用于登录验证                 |
| 角色    | role        | int unsigned | 1                 | 用户的角色权限                      |
| 邮箱    | email       | varchar(255) | no default        | 用户的邮箱地址，用于账户绑定、通知或找回密码       |
| 头像URL | avatar      | text         | no default        | 用户头像的网络地址，用于展示个人形象           |
| 个性签名  | signature   | text         | no default        | 用户设置的个性化描述，展示在个人信息中          |
| 创建时间  | create_time | timestamp    | CURRENT_TIMESTAMP | 记录用户注册的时间                    |
| 更新时间  | update_time | timestamp    | CURRENT_TIMESTAMP | 记录用户信息的最后更新时间，例如修改个人信息时更新此字段 |
