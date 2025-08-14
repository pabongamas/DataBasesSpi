select count(*),unit.unitname from student join enrolment using(studentid) join unit using(unitcode)
group by unit.unitname;

#1
select count(*),unitname from enrolment,unit where enrolment.unitcode=unit.unitcode group by unitname;


#2
select count(*) as totalstudents,unitname from enrolment,unit where enrolment.unitcode=unit.unitcode group by unitname having totalstudents>1;


#3
select count(*) as totalstudents,unitname from enrolment,unit where enrolment.unitcode=unit.unitcode and STUDYYEAR>2010 group by unitname having totalstudents>1;

#4

select teacher.TEACHERNAME,workload.SCHEDULEHOURS,workload.PAYRATE from teacher join workload using(teacherid);

#5
select teacher.TEACHERNAME,sum(workload.SCHEDULEHOURS) as sum from teacher join workload using(teacherid) group by TEACHERNAME;

#6
select distinct student.STUDENTNAME from student join enrolment using(studentid);

#7

select student.studentname from student where student.STUDENTID in ( select STUDENTID from enrolment) ;

#8
select student.studentname,unit.UNITNAME from student join enrolment using(studentid) join unit using(unitcode);

#9
select distinct student.studentname from student 
join enrolment using(studentid) 
join unit using(unitcode) 
join workload using (unitcode) 
join teacher using(teacherid)
where TEACHERNAME='Wasim Akram' and teacher.
