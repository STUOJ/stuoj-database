CREATE DATABASE IF NOT EXISTS stuoj_db;

USE stuoj_db;

create table if not exists tbl_judgement
(
    id            int unsigned auto_increment comment '评测点ID'
        primary key,
    submission_id int unsigned             not null comment '提交记录ID',
    status        int unsigned default '0' not null comment '状态',
    time          int unsigned default '0' not null comment '运行耗时',
    memory        int unsigned default '0' not null comment '内存'
)
    comment '单个评测点结果表';

create table if not exists tbl_language
(
    id   int unsigned auto_increment comment '语言ID'
        primary key,
    name varchar(50) not null comment '语言名'
)
    comment '语言表';

create table if not exists tbl_question
(
    id          int unsigned auto_increment comment '题目ID'
        primary key,
    title       text                     not null comment '标题',
    source      varchar(50)              null comment '题目来源',
    difficulty  int unsigned default '0' not null comment '难度： 0 暂无评定，1 普及−，2 普及/提高−，3 普及+/提高，4 提高+/省选− ，5 省选/NOI−，6 NOI/NOI+/CTSC',
    create_time timestamp                 null comment '创建时间',
    update_time timestamp                 null comment '更新时间'
)
    comment '题目表';

create table if not exists tbl_submission
(
    id          int unsigned auto_increment comment '提交记录id'
        primary key,
    user_id     int unsigned default '0' not null comment '用户ID',
    question_id int unsigned             not null comment '题目ID',
    status      int unsigned             null comment '状态',
    score       int unsigned default '0' not null comment '分数',
    submit_time timestamp                 not null comment '提交时间',
    language_id int unsigned default '0' not null comment '语言id',
    length      int unsigned default '0' not null comment '长度',
    memory      int unsigned             null comment '内存',
    time        int unsigned default '0' not null comment '运行耗时'
)
    comment '提交记录表';

create table if not exists tbl_user
(
    id          int unsigned auto_increment comment '用户ID'
        primary key,
    username    varchar(50)                   not null comment '用户名',
    password    varchar(50)  default '123456' not null comment '密码',
    `group`     int unsigned default '1'      not null comment '用户组：0 封禁，1 普通用户，2 管理员，3 超级管理员',
    email       varchar(50)                   not null comment '邮箱',
    avatar      varchar(200)                  null comment '头像URL',
    create_time timestamp                      null comment '创建时间',
    update_time timestamp                      null comment '更新时间',
    constraint user_pk_2
        unique (username),
    constraint user_pk_3
        unique (email)
)
    comment '用户表';

