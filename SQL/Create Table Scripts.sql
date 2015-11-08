show search_path
set search_path to info

create table question (
	id serial primary key,
	fk_member_id int,
	created timestamp,
	question varchar(200),
	views int,
	likes int,
	url_slug varchar(150)
)

create table answer (
	id serial primary key,
	fk_question_id int,
	fk_member_id int,
	created timestamp,
	answer varchar(500),
	likes int
)

create table member (
	id serial primary key,
	username varchar(50),
	password varchar(15),
	firstname varchar(20),
	lastname varchar(20),
	email varchar(50)
)

create table category_tag (
	id serial primary key,
	tag varchar(50)
)

create table question_category (
	id serial primary key,
	fk_question_id int,
	fk_category_tag_id int
)

select * from question
select * from answer
select * from member
select * from category_tag
select * from question_category

//drop table question
//drop table answer
