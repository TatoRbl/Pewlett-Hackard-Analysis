
	

select e.emp_no, 
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
from employees as e
left join title as ti
on e.emp_no = ti.emp_no
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

SELECT 
DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

select count(title) as count_title, title
from unique_titles
group by title
order by count_title DESC;


	