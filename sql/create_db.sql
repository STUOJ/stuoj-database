CREATE DATABASE IF NOT EXISTS stuoj_db;

USE stuoj_db;

-- DDL

create table if not exists tbl_judgement
(
    id            int unsigned auto_increment comment '评测点ID'
        primary key,
    submission_id int unsigned   default '0' not null comment '提交记录ID',
    test_point_id int unsigned   default '0' not null comment '评测点ID',
    time          float unsigned default '0' not null comment '运行耗时（s）',
    memory        int unsigned   default '0' not null comment '内存（kb）',
    output        longtext                   not null comment '输出结果',
    error         longtext                   not null comment '报错信息',
    message       longtext                   not null comment '信息',
    status        int unsigned   default '0' not null comment '状态'
)
    comment '单个评测点结果表';

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
    source        text                            null comment '题目来源',
    difficulty    int unsigned   default '0'      not null comment '难度： 0 暂无评定，1 普及−，2 普及/提高−，3 普及+/提高，4 提高+/省选− ，5 省选/NOI−，6 NOI/NOI+/CTSC',
    time_limit    float unsigned default '1'      not null comment '时间限制（s）',
    memory_limit  int unsigned   default '131072' not null comment '内存限制（kb）',
    description   longtext                        not null comment '题面',
    input         longtext                        not null comment '输入说明',
    output        longtext                        not null comment '输出说明',
    sample_input  longtext                        not null comment '输入样例',
    sample_output longtext                        not null comment '输出样例',
    hint          longtext                        not null comment '提示',
    status        int unsigned   default '1'      not null comment '状态：1 公开，2 出题中，3 调试中，4 作废',
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
    status      int unsigned   default '0'     not null comment '状态：0 未评测',
    score       int unsigned   default '0'     not null comment '分数',
    submit_time timestamp      default (now()) not null comment '提交时间',
    language_id int unsigned   default '0'     not null comment '语言ID',
    length      int unsigned   default '0'     not null comment '源代码长度',
    memory      int unsigned   default '0'     not null comment '内存（kb）',
    time        float unsigned default '0'     not null comment '运行耗时（s）',
    source_code longtext                       not null comment '源代码'
)
    comment '提交记录表';

create table if not exists tbl_test_point
(
    id          int unsigned auto_increment comment '评测点ID'
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
    username    varchar(255)                            not null comment '用户名',
    password    varchar(255)  default '123456'          not null comment '密码',
    role        int unsigned  default '1'               not null comment '角色：0 封禁，1 普通用户，2 管理员，3 超级管理员',
    email       varchar(255)                            not null comment '邮箱',
    avatar      varchar(1023) default ''                not null comment '头像URL',
    create_time timestamp     default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp     default CURRENT_TIMESTAMP not null comment '更新时间',
    constraint user_pk_2
        unique (username),
    constraint user_pk_3
        unique (email)
)
    comment '用户表';

