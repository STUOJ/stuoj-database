CREATE DATABASE IF NOT EXISTS stuoj_db;

USE stuoj_db;

-- DDL

create table if not exists tbl_judgement
(
    id             int unsigned auto_increment comment '评测点结果ID'
        primary key,
    submission_id  int unsigned   default '0' not null comment '提交记录ID',
    testcase_id  int unsigned   default '0' not null comment '评测点记录ID',
    time           float unsigned default '0' not null comment '运行耗时（s）',
    memory         int unsigned   default '0' not null comment '内存（kb）',
    stdout         longtext                   not null comment '标准输出',
    stderr         longtext                   not null comment '标准错误输出',
    compile_output longtext                   not null comment '编译输出',
    message        longtext                   not null comment '信息',
    status         int unsigned   default '0' not null comment '提交状态：0 Pend, 1 In Queue, 2 Proc, 3 AC, 4 WA, 5 TLE, 6 CE, 7 RE(SIGSEGV), 8 RE(SIGXFSZ), 9 RE(SIGFPE), 10 RE(SIGABRT), 11 RE(NZEC), 12 RE(Other), 13 IE, 14 EFE'
)
    comment '评测点结果表';

create table if not exists tbl_language
(
    id   int unsigned auto_increment comment '语言ID'
        primary key,
    name varchar(255) not null comment '语言名'
)
    comment '语言表';

create table if not exists tbl_problem
(
    id            int unsigned auto_increment comment '题目ID'
        primary key,
    title         text                            not null comment '标题',
    source        text                            not null comment '题目来源',
    difficulty int unsigned default '0' not null comment '难度：0 暂无评定，1 E级（入门），2 D级（简单），3 C级（中等），4 B级（较难），5 A级（困难），6 S级（超级困难）',
    time_limit    float unsigned default '1'      not null comment '时间限制（s）',
    memory_limit  int unsigned   default '131072' not null comment '内存限制（kb）',
    description   longtext                        not null comment '题面',
    input         longtext                        not null comment '输入说明',
    output        longtext                        not null comment '输出说明',
    sample_input  longtext                        not null comment '输入样例',
    sample_output longtext                        not null comment '输出样例',
    hint          longtext                        not null comment '提示',
    status        int unsigned   default '1'      not null comment '状态：0 作废，1 公开，2 出题中，3 调试中',
    create_time   timestamp      default (now())  not null comment '创建时间',
    update_time   timestamp      default (now())  not null comment '更新时间'
)
    comment '题目表';

create table if not exists tbl_submission
(
    id          int unsigned auto_increment comment '提交记录ID'
        primary key,
    user_id     int unsigned   default '0'     not null comment '用户ID',
    problem_id  int unsigned   default '0'     not null comment '题目ID',
    status      int unsigned   default '0'     not null comment '提交状态：0 Pend, 1 In Queue, 2 Proc, 3 AC, 4 WA, 5 TLE, 6 CE, 7 RE(SIGSEGV), 8 RE(SIGXFSZ), 9 RE(SIGFPE), 10 RE(SIGABRT), 11 RE(NZEC), 12 RE(Other), 13 IE, 14 EFE',
    score       int unsigned   default '0'     not null comment '分数',
    language_id int unsigned   default '0'     not null comment '语言ID',
    length      int unsigned   default '0'     not null comment '源代码长度',
    memory      int unsigned   default '0'     not null comment '内存（kb）',
    time        float unsigned default '0'     not null comment '运行耗时（s）',
    source_code longtext                       not null comment '源代码',
    create_time timestamp      default (now()) not null comment '创建时间',
    update_time timestamp      default (now()) not null comment '更新时间'
)
    comment '提交信息表';

create table if not exists tbl_testcase
(
    id          int unsigned auto_increment comment '评测点数据ID'
        primary key,
    serial      int unsigned default '0' not null comment '评测点序号',
    problem_id  int unsigned default '0' not null comment '题目ID',
    test_input  longtext                 not null comment '测试输入',
    test_output longtext                 not null comment '测试输出'
)
    comment '评测点数据表';

create table if not exists tbl_user
(
    id          int unsigned auto_increment comment '用户ID'
        primary key,
    username    varchar(255)                           not null comment '用户名',
    password    varchar(255) default '123456'          not null comment '密码',
    role        int unsigned default '1'               not null comment '角色：0 封禁，1 普通用户，2 管理员，3 超级管理员',
    email       varchar(255)                           not null comment '邮箱',
    avatar      text                                   not null comment '头像URL',
    signature   text                                   not null comment '个性签名',
    create_time timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp    default CURRENT_TIMESTAMP not null comment '更新时间',
    constraint user_pk_2
        unique (username),
    constraint user_pk_3
        unique (email)
)
    comment '用户表';

create table if not exists tbl_problem_history
(
    id            int unsigned auto_increment comment '记录ID'
        primary key,
    user_id       int            default 0        not null comment '用户ID',
    problem_id    int unsigned   default '0'      not null comment '题目ID',
    title         text                            not null comment '标题',
    source        text                            not null comment '题目来源',
    difficulty    int unsigned   default '0'      not null comment '难度',
    time_limit    float unsigned default '1'      not null comment '时间限制（s）',
    memory_limit  int unsigned   default '131072' not null comment '内存限制（kb）',
    description   longtext                        not null comment '题面',
    input         longtext                        not null comment '输入说明',
    output        longtext                        not null comment '输出说明',
    sample_input  longtext                        not null comment '输入样例',
    sample_output longtext                        not null comment '输出样例',
    hint          longtext                        not null comment '提示',
    operation     int unsigned   default '0'      not null comment '操作：0 未知，1 添加，2 修改，3 删除',
    create_time   timestamp      default (now())  not null comment '创建时间'
)
    comment '题目历史记录表';

create table if not exists tbl_tag
(
    id   int unsigned auto_increment comment '标签ID'
        primary key,
    name varchar(255) default '' not null comment '标签名',
    constraint tbl_tag_pk
        unique (name)
)
    comment '标签表';

create table if not exists tbl_problem_tag
(
    id         int unsigned auto_increment comment '关系ID'
        primary key,
    problem_id int unsigned default '0' not null comment '题目ID',
    tag_id     int unsigned default '0' not null comment '标签ID'
)
    comment '题目标签关系表';

create table if not exists tbl_solution
(
    id          int unsigned auto_increment comment '题解ID'
        primary key,
    language_id int unsigned default '0' not null comment '语言ID',
    problem_id  int unsigned default '0' not null comment '题目ID',
    source_code longtext                 not null comment '源代码'
)
    comment '题解表';

