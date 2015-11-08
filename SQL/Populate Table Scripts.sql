show search_path
set search_path to info

insert into member (username, password, firstname, lastname, email) values 
('member1', 'pwd100', 'Omar', 'Ramsey', 'internet_bum84@hotmail.com'),
('member2', 'pwd100', 'Rehman', 'Javed', 'ismail.sana@gmail.com'),
('member3', 'pwd100', 'Zainab', 'Ali', 'sanaismail84@yahoo.com')

insert into question (fk_member_id, created, question, views, likes, url_slug) values
(1, now(), 'How many people live in the city of Karachi?', 0, 0, ''),
(1, now(), 'What is the best place to get Chinese food in Karachi?', 0, 0, ''),
(2, now(), 'Who wrote the national anthem of Pakistan?', 0, 0, ''),
(2, now(), 'What are some scientific inventions and discoveries from Pakistan?', 0, 0, ''),
(3, now(), 'What is the best way to go from Karachi to Nathia Gali?', 0, 0, ''),
(3, now(), 'Where should I take tourists when they visit Pakistan?', 0, 0, '')

insert into answer (fk_question_id, fk_member_id, created, answer, likes) values
(1, 2, now(), 'There are over 20 million people living in the city of Karachi.', 0),
(1, 3, now(), 'A lot of people live there', 0),
(6, 1, now(), 'You should take them to Nathia Gali', 0),
(6, 2, now(), 'Dolman Mall is a good place for tourists.', 0)

select * from member
select * from question
select * from answer