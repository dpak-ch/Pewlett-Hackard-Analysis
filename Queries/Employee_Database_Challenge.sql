SELECT em.emp_no, em.first_name, em.last_name,
ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as em
left join titles as ti
on em.emp_no = ti.emp_no
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by em.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO retirement_unique
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

select count(title),title
into ret_title_count
from retirement_unique
group by title
order by count desc;

select distinct on (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, t.title
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
left join titles as t
on e.emp_no = t.emp_no
where (de.to_date = '9999-01-01') AND (e.birth_date between '1965-01-01' AND '1965-12-31')
order by emp_no;