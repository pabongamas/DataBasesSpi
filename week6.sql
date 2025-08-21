-- 1
select teacher.TEACHERSALARY,teacher.TEACHERNAME from teacher where teacher.TEACHERSALARY<(select avg(teacher.TEACHERSALARY)from teacher) or  
teacher.TEACHERSALARY>(select avg(teacher.TEACHERSALARY)from teacher);


-- 2
select unit.UNITNAME,CONCAT(enrolment.SEMESTER, ' ',RIGHT(enrolment.studyyear, 2)) as date  from enrolment join unit using(unitcode);



select unit.UNITNAME,TEACHERNAME from unit join workload using (unitcode) join teacher using(teacherid) where TEACHERNAME like '%n';


select teacher.TEACHERSALARY from teacher;

select  sum(teacher.TEACHERSALARY) sum,TEACHERDESIGNATION from teacher group by teacher.TEACHERDESIGNATION;

### . Write a Python script to display the name and the total number of credits for each 
### student. Then print the record with highest total credits.

select distinct sum(unit.UNITCREDITPOINTS),student.STUDENTNAME from student join enrolment using(studentid) join unit using(unitcode) group by STUDENTNAME