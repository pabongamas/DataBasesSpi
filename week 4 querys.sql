USE WEEK4;
SELECT * FROM STUDENT;

#1
select TEACHERNAME,TEACHERDESIGNATION,TEACHERSALARY FROM TEACHER 
WHERE TEACHER.TEACHERDESIGNATION='PROFESSOR';

#2
select * FROM unit where unit.unitcreditpoints=3 order by unitname;

#3
select STUDENTNAME,STUDENTSUBURB from student WHERE year(studentdob)<'1980'; 

#4
select distinct UNITCODE from unit 
join enrolment using(UNITCODE)
where enrolment.semester='FALL' AND enrolment.studyyear>2015;

#5
select studentname,round(studentgpa,0) as gpa from student 
where studentgpa>=3  and   studentsuburb in ('CHATSWOOD','RYDE','BURWOOD');

#6
select max(teachersalary) as maxsalary,min(teachersalary) as minsalary,avg(teachersalary) as avgsalary from TEACHER; 


#7
select STUDENTNAME,STUDENTSUBURB from STUDENT WHERE STUDENTSUBURB like 'R%';


#8
select count(*) from student WHERE STUDENTGPA>3.5;

