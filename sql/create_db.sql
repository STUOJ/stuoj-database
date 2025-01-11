CREATE DATABASE stuoj_db;

USE stuoj_db;

create table if not exists tbl_language
(
    id     bigint unsigned auto_increment comment '语言ID'
        primary key,
    name   varchar(255)                not null comment '语言名',
    serial bigint unsigned default '0' not null comment '排序序号',
    map_id bigint unsigned default '0' not null comment '映射ID',
    status bigint unsigned default '3' not null comment '状态'
);

create table if not exists tbl_problem
(
    id            bigint unsigned auto_increment comment '题目ID'
        primary key,
    title         text                                       not null comment '标题',
    source        text                                       not null comment '题目来源',
    difficulty    tinyint unsigned default '0'               not null comment '难度',
    time_limit    double           default 1                 not null comment '时间限制（s）',
    memory_limit  bigint unsigned  default '131072'          not null comment '内存限制（kb）',
    description   longtext                                   not null comment '题面',
    input         longtext                                   not null comment '输入说明',
    output        longtext                                   not null comment '输出说明',
    sample_input  longtext                                   not null comment '输入样例',
    sample_output longtext                                   not null comment '输出样例',
    hint          longtext                                   not null comment '提示',
    status        bigint unsigned  default '1'               not null comment '状态',
    create_time   timestamp        default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time   timestamp        default CURRENT_TIMESTAMP not null comment '更新时间'
);

create table if not exists tbl_solution
(
    id          bigint unsigned auto_increment comment '题解ID'
        primary key,
    language_id bigint unsigned default '0' not null comment '语言ID',
    problem_id  bigint unsigned default '0' not null comment '题目ID',
    source_code longtext                    not null comment '源代码',
    constraint fk_tbl_solution_language
        foreign key (language_id) references tbl_language (id),
    constraint fk_tbl_solution_problem
        foreign key (problem_id) references tbl_problem (id)
            on delete cascade
);

create table if not exists tbl_tag
(
    id   bigint unsigned auto_increment comment '标签ID'
        primary key,
    name varchar(255) default '' not null comment '标签名',
    constraint uni_tbl_tag_name
        unique (name)
);

create table if not exists tbl_problem_tag
(
    tag_id     bigint unsigned not null comment '标签ID',
    problem_id bigint unsigned not null comment '题目ID',
    primary key (tag_id, problem_id),
    constraint fk_tbl_problem_tag_problem
        foreign key (problem_id) references tbl_problem (id)
            on delete cascade,
    constraint fk_tbl_problem_tag_tag
        foreign key (tag_id) references tbl_tag (id)
            on delete cascade
);

create table if not exists tbl_testcase
(
    id          bigint unsigned auto_increment comment '评测点ID'
        primary key,
    serial      bigint unsigned default '0' not null comment '评测点序号',
    problem_id  bigint unsigned default '0' not null comment '题目ID',
    test_input  longtext                    not null comment '测试输入',
    test_output longtext                    not null comment '测试输出',
    constraint fk_tbl_testcase_problem
        foreign key (problem_id) references tbl_problem (id)
            on delete cascade
);

create table if not exists tbl_user
(
    id          bigint unsigned auto_increment comment '用户ID'
        primary key,
    username    varchar(255)                               not null comment '用户名',
    password    varchar(255)     default '123456'          not null comment '密码',
    role        tinyint unsigned default '1'               not null comment '角色',
    email       varchar(255)                               not null comment '邮箱',
    avatar      text                                       not null comment '头像URL',
    signature   text                                       not null comment '个性签名',
    create_time timestamp        default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp        default CURRENT_TIMESTAMP not null comment '更新时间',
    constraint uni_tbl_user_email
        unique (email),
    constraint uni_tbl_user_username
        unique (username)
);

create table if not exists tbl_blog
(
    id          bigint unsigned auto_increment comment '博客ID'
        primary key,
    user_id     bigint unsigned  default '0'               not null comment '用户ID',
    problem_id  bigint unsigned  default '0'               not null comment '关联题目ID',
    title       text                                       not null comment '标题',
    content     longtext                                   not null comment '内容',
    status      tinyint unsigned default '1'               not null comment '状态',
    create_time timestamp        default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp        default CURRENT_TIMESTAMP not null comment '更新时间',
    constraint fk_tbl_blog_user
        foreign key (user_id) references tbl_user (id)
);

create table if not exists tbl_comment
(
    id          bigint unsigned auto_increment comment '评论ID'
        primary key,
    user_id     bigint unsigned  default '0'               not null comment '用户ID',
    blog_id     bigint unsigned  default '0'               not null comment '博客ID',
    content     longtext                                   not null comment '内容',
    status      tinyint unsigned default '1'               not null comment '状态',
    create_time timestamp        default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp        default CURRENT_TIMESTAMP not null comment '更新时间',
    constraint fk_tbl_comment_blog
        foreign key (blog_id) references tbl_blog (id)
            on delete cascade,
    constraint fk_tbl_comment_user
        foreign key (user_id) references tbl_user (id)
);

create table if not exists tbl_history
(
    id            bigint unsigned auto_increment comment '记录ID'
        primary key,
    user_id       bigint unsigned  default '0'               not null comment '用户ID',
    problem_id    bigint unsigned  default '0'               not null comment '题目ID',
    title         text                                       not null comment '标题',
    source        text                                       not null comment '题目来源',
    difficulty    tinyint unsigned default '0'               not null comment '难度',
    time_limit    double           default 1                 not null comment '时间限制（s）',
    memory_limit  bigint unsigned  default '131072'          not null comment '内存限制（kb）',
    description   longtext                                   not null comment '题面',
    input         longtext                                   not null comment '输入说明',
    output        longtext                                   not null comment '输出说明',
    sample_input  longtext                                   not null comment '输入样例',
    sample_output longtext                                   not null comment '输出样例',
    hint          longtext                                   not null comment '提示',
    operation     tinyint unsigned default '0'               not null comment '操作',
    create_time   timestamp        default CURRENT_TIMESTAMP not null comment '创建时间',
    constraint fk_tbl_history_user
        foreign key (user_id) references tbl_user (id)
);

create table if not exists tbl_submission
(
    id          bigint unsigned auto_increment comment '提交记录ID'
        primary key,
    user_id     bigint unsigned default '0'               not null comment '用户ID',
    problem_id  bigint unsigned default '0'               not null comment '题目ID',
    status      bigint unsigned default '1'               not null comment '状态',
    score       bigint unsigned default '0'               not null comment '分数',
    language_id bigint unsigned default '0'               not null comment '语言ID',
    length      bigint unsigned default '0'               not null comment '源代码长度',
    memory      bigint unsigned default '0'               not null comment '内存（kb）',
    time        double          default 0                 not null comment '运行耗时（s）',
    source_code longtext                                  not null comment '源代码',
    create_time timestamp       default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp       default CURRENT_TIMESTAMP not null comment '更新时间',
    constraint fk_tbl_submission_language
        foreign key (language_id) references tbl_language (id),
    constraint fk_tbl_submission_problem
        foreign key (problem_id) references tbl_problem (id),
    constraint fk_tbl_submission_user
        foreign key (user_id) references tbl_user (id)
);

create table if not exists tbl_judgement
(
    id             bigint unsigned auto_increment comment '评测点ID'
        primary key,
    submission_id  bigint unsigned default '0' not null comment '提交记录ID',
    testcase_id    bigint unsigned default '0' not null comment '评测点ID',
    time           double          default 0   not null comment '运行耗时（s）',
    memory         bigint unsigned default '0' not null comment '内存（kb）',
    stdout         longtext                    not null comment '标准输出',
    stderr         longtext                    not null comment '标准错误输出',
    compile_output longtext                    not null comment '编译输出',
    message        longtext                    not null comment '信息',
    status         bigint unsigned default '1' not null comment '状态',
    constraint fk_tbl_judgement_submission
        foreign key (submission_id) references tbl_submission (id)
            on delete cascade
);

