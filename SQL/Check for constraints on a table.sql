-- reset search path
show search_path
set search_path to info

-- check a table's constraints, ie foreign key, primary key, etc
SELECT
    tc.constraint_name, tc.table_name, kcu.column_name, 
    ccu.table_name AS foreign_table_name,
    ccu.column_name AS foreign_column_name, constraint_type
FROM 
    information_schema.table_constraints AS tc 
    JOIN information_schema.key_column_usage AS kcu
      ON tc.constraint_name = kcu.constraint_name
    JOIN information_schema.constraint_column_usage AS ccu
      ON ccu.constraint_name = tc.constraint_name
WHERE --constraint_type = 'FOREIGN KEY' AND 
tc.table_name='answer' and constraint_type = 'PRIMARY KEY'

-- add a constraint to a table
ALTER TABLE answer 
ADD CONSTRAINT answer_fkey FOREIGN KEY (fk_question_id) 
REFERENCES question (id) MATCH SIMPLE 
ON UPDATE CASCADE ON DELETE CASCADE

-- preview table data
select * from answer;
select * from question;