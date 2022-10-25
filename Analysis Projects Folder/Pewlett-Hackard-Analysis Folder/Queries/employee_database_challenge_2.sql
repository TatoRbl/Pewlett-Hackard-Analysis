
DROP TABLE IF EXISTS "mentorship_eligibility"


select DISTINCT ON (e.emp_no)
e.emp_no, 
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
into mentorship_eligibility
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
left join title as ti
on e.emp_no = ti.emp_no
where de.to_date = '9999-01-01' and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by emp_no

select * from mentorship_eligibility limit 10;